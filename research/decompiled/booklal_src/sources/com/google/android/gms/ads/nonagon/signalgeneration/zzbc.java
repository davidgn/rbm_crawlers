package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzbhv;
import com.google.android.gms.internal.ads.zzcai;
import com.google.android.gms.internal.ads.zzdxz;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzbc {
    public final String zza;
    public String zzb;
    public zzcai zzc;
    public Bundle zzd = new Bundle();
    private long zze;
    private long zzf;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzbc(JsonReader jsonReader, zzcai zzcaiVar) {
        Bundle bundle;
        char c5;
        this.zze = -1L;
        this.zzf = -1L;
        this.zzc = zzcaiVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        c5 = 2;
                        break;
                    }
                    c5 = 65535;
                    break;
                case -995427962:
                    if (nextName.equals("params")) {
                        c5 = 0;
                        break;
                    }
                    c5 = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c5 = 1;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        c5 = 3;
                        break;
                    }
                    c5 = 65535;
                    break;
                default:
                    c5 = 65535;
                    break;
            }
            if (c5 == 0) {
                str = jsonReader.nextString();
            } else if (c5 == 1) {
                hashMap = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (c5 == 2) {
                this.zze = jsonReader.nextLong();
            } else if (c5 != 3) {
                jsonReader.skipValue();
            } else {
                this.zzf = jsonReader.nextLong();
            }
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzd.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbhv.zzcN)).booleanValue() || zzcaiVar == null || (bundle = zzcaiVar.zzm) == null) {
            return;
        }
        bundle.putLong(zzdxz.GET_SIGNALS_SDKCORE_START.zza(), this.zze);
        zzcaiVar.zzm.putLong(zzdxz.GET_SIGNALS_SDKCORE_END.zza(), this.zzf);
    }
}
