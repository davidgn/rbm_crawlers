package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzfjl {
    public final int zza;
    public final int zzb;
    public final boolean zzc;

    public zzfjl(int i, int i4, boolean z4) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = z4;
    }

    public static List zza(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i4 = 0;
            boolean z4 = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i4 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z4 = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new zzfjl(i, i4, z4));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
