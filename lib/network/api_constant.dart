//Base URl
const kBaseURL = "https://oneoneshop.hapeyeapp.com/api/v1";

//End Points
const kEndPointForRegister = "/register";
const kEndPointForLogin = "/login";
const kEndPointForUserProfile = "/customer";
const kEndPointForUpdatePassword = "/customer/update-password";
const kEndPointForUserCredUpdate = "/customer";
const kEndPointForProfileImageUpload = "/customer/upload-image";
const kEndPointForDeleteUserAccount = "/customer";
const kEndPointForItems = "/products";
const kEndPointForItemDetails = "/products/{$kPathParamKeyForProductID}";
const kEndPointForCategories = "/categories";

//keys

const kAuthorizationKey = "Authorization";
const kQueryParamKeyForOldPassword = "old_password";
const kQueryParamKeyForNewPassword = "password";
const kQueryParamKeyForConfirmPassword = "password_confirmation";
const kQueryParamKeyForName = "name";
const kQueryParamKeyForPhone = "phone";
const kQueryParamKeyForEmail = "email";
const kQueryParamKeyForPage = "page";
const kQueryParamKeyForLimit = "limit";
const kQueryParamKeyForCategoryID = "category_id";
const kPathParamKeyForProductID = "productID";
