import { initializeApp } from "firebase/app";
import {getAuth} from "firebase/auth";

const firebaseConfig = {
  apiKey: "AIzaSyCsbpVxeGyHP5pEeZNgXgWAaR6CuZSjAlA",
  authDomain: "dalgonaauthentication.firebaseapp.com",
  projectId: "dalgonaauthentication",
  storageBucket: "dalgonaauthentication.appspot.com",
  messagingSenderId: "1705026428",
  appId: "1:1705026428:web:e74b85a35ceb31f84a7af9"
};


const app = initializeApp(firebaseConfig);
export const auth=getAuth(app);