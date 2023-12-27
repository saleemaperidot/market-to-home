import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/presentation/commonWidgets/button_loader.dart';
import 'package:market_2_home/presentation/commonWidgets/custom_icon_button.dart';

import '../../commonWidgets/screen_arguments.dart';
import '../../commonWidgets/search_bar.dart';

class MapLocation extends StatefulWidget {
  @override
  _MapLocationState createState() => _MapLocationState();

  static const routeMapLocation = 'routeMapLocation';
}

class _MapLocationState extends State<MapLocation> {
  late GoogleMapController mapController;
  LatLng centerLatLng = LatLng(25.204822730622254, 55.27078614888702);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    locateme();
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      centerLatLng = position.target;
      print('Center Lat: ${centerLatLng.latitude}');
      print('Center Lng: ${centerLatLng.longitude}');
    });
  }

  void showSearchPlace() async {
    const kGoogleApiKey = "AIzaSyBOMH3vcelOy4VFaV2gATI6fdLEqFdVbyE";

    Prediction? p = await PlacesAutocomplete.show(
        offset: 0,
        radius: 1000,
        types: [],
        strictbounds: false,
        region: "ae",
        context: context,
        apiKey: kGoogleApiKey,
        mode: Mode.overlay,
        language: "es",
        components: [Component(Component.country, "ae")]);

    if (p != null) {
      GoogleMapsPlaces _places = new GoogleMapsPlaces(apiKey: kGoogleApiKey);

      PlacesDetailsResponse detail =
          await _places.getDetailsByPlaceId(p.placeId!);

      if (detail.isOkay) {
        double? latitude = detail.result.geometry?.location.lat;
        double? longitude = detail.result.geometry?.location.lng;
        String? address = p.description;
        log(latitude.toString());
        mapController.animateCamera(
            CameraUpdate.newLatLngZoom(LatLng(latitude!, longitude!), 25));
      }
    }
  }

  locateme() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    double lat = position.latitude;
    double long = position.longitude;

    LatLng location = LatLng(lat, long);

    mapController
        .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 14));

    setState(() {
      centerLatLng = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenArguments? args =
        ModalRoute.of(context)?.settings.arguments as ScreenArguments?;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Select Your Location'),
      ),
      body: Column(
        children: [
          Container(
            height: 60.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: InkWell(
                      onTap: () {
                        showSearchPlace();
                      },
                      child: AbsorbPointer(child: SearchBars())),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 450.h,
            child: Stack(
              children: [
                GoogleMap(
                  zoomControlsEnabled: false,
                  onMapCreated: _onMapCreated,
                  onCameraMove: _onCameraMove,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(25.25736985201293,
                        55.32662037760019), // Set initial map center
                    zoom: 12.0,
                  ),
                  markers: Set<Marker>.of([
                    Marker(
                      markerId: MarkerId('center_marker'),
                      position: centerLatLng,
                    ),
                  ]),
                ),
                Positioned(
                  bottom: 15.h,
                  right: 15.w,
                  child: InkWell(
                    onTap: () {
                      print('Center Lat: ${centerLatLng.latitude}');
                      print('Center Lng: ${centerLatLng.longitude}');
                      locateme();
                    },
                    child: Container(
                      height: 28.h,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            offset: const Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IntrinsicWidth(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 18.r,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  'Locate Me',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60.h,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: Offset(0.0, 0.0),
                blurRadius: 5.0,
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<DashBoradBloc>(context).add(
                          LocationConfimation(
                              context,
                              args!.from,
                              centerLatLng.latitude.toString(),
                              centerLatLng.longitude.toString()));
                    },
                    child: SizedBox(
                      height: 35.h,
                      width: 130.w,
                      child: BlocBuilder<DashBoradBloc, DashBoradState>(
                        builder: (context, state) {
                          return state.isLoading
                              ? Center(child: ButtonLoader())
                              : CustomIconButton(
                                  name: 'Confirm Location',
                                );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('Center Lat: ${centerLatLng.latitude}');
      //     print('Center Lng: ${centerLatLng.longitude}');
      //     getLocation();
      //   },
      //   child: Icon(Icons.location_on),
      // ),
    );
  }
}
