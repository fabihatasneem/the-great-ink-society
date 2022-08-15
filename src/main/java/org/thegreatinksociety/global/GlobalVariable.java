package org.thegreatinksociety.global;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class GlobalVariable {

    public static final String localUrl = "http://localhost:8080";
    public static final String serverUrl = "";

    public static final String imageUploadPath = "D:\\New Folder\\Images\\";

    public static final String MALE_DP_LINK = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Fmale_dp.jpg?alt=media&token=8a0f2989-5cd9-409b-887c-a1c4aded8b42";
    public static final String FEMALE_DP_LINK = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/profilePic%2Ffemale_dp.jpg?alt=media&token=ce14b4cf-1ee4-48ad-811c-32f6437e8e0f";
    public static final String WRITING_BACKGROUND_LINK = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/img%2Fwriting-index.jpg?alt=media&token=899830a5-7209-4247-844e-2859822722b2";
    public static final String PODCAST_BACKGROUND_LINK = "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/podcastCover%2FnoPodcastCover.jpg?alt=media&token=c50e6a7d-578e-4633-97fd-9384223cbf0d";

    public static final Map<String, String> GENRE_MAP = Stream.of(new String[][] {
            { "ADVENTURE", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fadventure.jpg?alt=media&token=c4bdc9ef-eddf-43ff-bdce-11fb92b3c63e" },
            { "FANTASY", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Ffantasy.jpg?alt=media&token=fdc432df-f889-475f-b282-fa6351fabfcc" },
            {"HISTORY", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fhistory.png?alt=media&token=74bc87e4-1a32-4a9f-81d3-65ce55482ffc"},
            {"ROMANCE", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fromance.jpg?alt=media&token=6561cd6a-0beb-4981-b7db-7188c937b848"},
            {"SCI FI", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fsci%20fi.jpg?alt=media&token=350d919b-1f36-4b60-9bb5-aca449d6e0ad"},
            {"SPIRITUAL", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fspiritual.jpg?alt=media&token=7182285d-9121-4145-8643-98b00811ed96"},
            {"THRILLER", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fthriller.jpg?alt=media&token=dde8d6d1-e5f8-4e93-a382-a03da063ff1e"},
            {"HORROR", "https://firebasestorage.googleapis.com/v0/b/the-great-ink-society-6e0c8.appspot.com/o/genre%2Fhorror.jpg?alt=media&token=eef7f4a0-c493-4550-8511-b17cd4d060eb"}
    }).collect(Collectors.toMap(data -> data[0], data -> data[1]));

    public static final String FIREBASE_API_KEY = "AIzaSyAOTFRUs-fLaNJg6XlboSwR-Dm7xiy6JYg";
    public static final String FIREBASE_AUTH_DOMAIN = "the-great-ink-society-6e0c8.firebaseapp.com";
    public static final String FIREBASE_PROJECT_ID = "the-great-ink-society-6e0c8";
    public static final String FIREBASE_STORAGE_BUCKET = "the-great-ink-society-6e0c8.appspot.com";
    public static final String FIREBASE_MESSAGING_SENDER_ID = "245652946373";
    public static final String FIREBASE_APP_ID = "1:245652946373:web:0beac7f80fec1ff6021fac";
    public static final String FIREBASE_MEASUREMENT_ID = "G-SM4S8XW2X7";
}
