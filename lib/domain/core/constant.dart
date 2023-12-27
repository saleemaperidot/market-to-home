class Apis {
  static const baseUrl = 'https://laravel.market2home.online/api/';
  //Auth
  static const login = 'login';
  static const validateOTP = 'validateOTP';
  static const loginWithOTP = 'loginWithOTP';
  static const register = 'register';
  static const forgotPassword = 'forgotPassword';
  static const updateLocation = 'updateLocation';
  static const logout = 'logout';

  static const dashboard = 'dashboard';
  static const getCategories = 'getCategories';
  static const listVendors = 'listVendors';
  static const getVendorProduct = 'get-vendor-products';
  static const getProductDetails = 'getProductDetails';
  static const addToWishlist = 'addToWishlist';
  static const removeFromWishlist = 'removeFromWishlist';
  static const productSearch = 'productSearch';

  static const checkout = "checkout";
  static const applyCouponProducts = 'applyCoupon/products';
  static const removeCouponProducts = 'removeCoupon/products';
  static const cartQuantity = 'cart/quantity';
  static const getCart = 'getCart';
  static const saveForLater = 'saveForLater';
  static const getWishlistProducts = 'getWishlistProducts';

  static const removeFromCart = 'removeFromCart';

  static const updateCustomerData = 'updateCustomerData';
  static const addAddress = 'addAddress';
  static const getAddress = 'getAddress';
  static const getOrders = 'getOrders';
  static const deleteAddress = 'deleteAddress';
  static const setDefaultAddress = 'setDefaultAddress';
  static const getOrderDetails = 'getOrderDetails';
  static const getWalletData = 'getWalletData';
  static const getProfileDetails = 'getProfileDetails';

  static const cancelItem = 'cancelItem';
  static const cancelOrder = 'cancelOrder';
  static const getReturnOptions = 'getReturnOptions';
  static const returnOrder = 'returnOrder';
  static const storeRating = 'storeRating';
  static const placeOrder = 'placeOrder';
  static const paymentVerify = 'paymentVerify';
  static const String ccAvenue_payment_url =
      "https://secure.ccavenue.ae/transaction/transaction.do";
}
