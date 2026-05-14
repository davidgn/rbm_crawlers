package com.google.android.gms.internal.ads;

import android.util.JsonReader;
/* loaded from: classes.dex */
public final class zzfjm {
    private String zza;

    public zzfjm(JsonReader jsonReader) {
        char c5;
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            if (hashCode != -1724546052) {
                if (hashCode == 3059181 && nextName.equals("code")) {
                    c5 = 0;
                }
                c5 = 65535;
            } else {
                if (nextName.equals("description")) {
                    c5 = 1;
                }
                c5 = 65535;
            }
            if (c5 == 0) {
                jsonReader.nextInt();
            } else if (c5 != 1) {
                jsonReader.skipValue();
            } else {
                str = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
        this.zza = str;
    }

    public final String zza() {
        return this.zza;
    }
}
