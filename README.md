# login_signup With Firebase

## Step 1: Set Up Firebase Project
1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Create a new Firebase project or select an existing one.
3. Add an Android and/or iOS app to the Firebase project.

## Step 2: Enable GitHub Authentication
1. In the Firebase Console, navigate to **Authentication** > **Sign-in method**.
2. Enable GitHub as a sign-in provider.
3. Provide the **Client ID** and **Client Secret** from your GitHub OAuth App.
   - Create a new OAuth App on GitHub by going to **Settings** > **Developer settings** > **OAuth Apps** > **New OAuth App**.
   - Set the **Authorization callback URL** to `https://<your-project-id>.firebaseapp.com/__/auth/handler`.

## Step 3: Add Firebase and Authentication Packages to Your Flutter Project
Add the following dependencies to your `pubspec.yaml` file:
```yaml
dependencies:
  firebase_core: latest_version
  firebase_auth: latest_version
  flutter_web_plugins: latest_version
  http: latest_version
