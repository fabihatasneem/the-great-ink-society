package org.thegreatinksociety.global;

import org.springframework.ui.Model;

public class GlobalFunction {
    public static void firebaseConfig(Model model) {
        model.addAttribute("FIREBASE_API_KEY", GlobalVariable.FIREBASE_API_KEY);
        model.addAttribute("FIREBASE_AUTH_DOMAIN", GlobalVariable.FIREBASE_AUTH_DOMAIN);
        model.addAttribute("FIREBASE_PROJECT_ID", GlobalVariable.FIREBASE_PROJECT_ID);
        model.addAttribute("FIREBASE_STORAGE_BUCKET", GlobalVariable.FIREBASE_STORAGE_BUCKET);
        model.addAttribute("FIREBASE_MESSAGING_SENDER_ID", GlobalVariable.FIREBASE_MESSAGING_SENDER_ID);
        model.addAttribute("FIREBASE_APP_ID", GlobalVariable.FIREBASE_APP_ID);
        model.addAttribute("FIREBASE_MEASUREMENT_ID", GlobalVariable.FIREBASE_MEASUREMENT_ID);
    }
}
