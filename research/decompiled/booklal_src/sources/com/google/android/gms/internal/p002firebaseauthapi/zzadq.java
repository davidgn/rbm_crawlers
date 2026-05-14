package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadq  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzadq implements zzaaq {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    private final zzadz zzg = new zzadz(null);
    private final zzadz zzh = new zzadz(null);
    private String zzi;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaaq
    public final String zza() {
        char c5;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("returnSecureToken", true);
        if (!this.zzh.zza().isEmpty()) {
            List zza = this.zzh.zza();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < zza.size(); i++) {
                jSONArray.put(zza.get(i));
            }
            jSONObject.put("deleteProvider", jSONArray);
        }
        List zza2 = this.zzg.zza();
        int size = zza2.size();
        int[] iArr = new int[size];
        for (int i4 = 0; i4 < zza2.size(); i4++) {
            String str = (String) zza2.get(i4);
            int i5 = 2;
            switch (str.hashCode()) {
                case -333046776:
                    if (str.equals("DISPLAY_NAME")) {
                        c5 = 1;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 66081660:
                    if (str.equals("EMAIL")) {
                        c5 = 0;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1939891618:
                    if (str.equals("PHOTO_URL")) {
                        c5 = 3;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1999612571:
                    if (str.equals("PASSWORD")) {
                        c5 = 2;
                        break;
                    }
                    c5 = 65535;
                    break;
                default:
                    c5 = 65535;
                    break;
            }
            if (c5 == 0) {
                i5 = 1;
            } else if (c5 != 1) {
                i5 = c5 != 2 ? c5 != 3 ? 0 : 4 : 5;
            }
            iArr[i4] = i5;
        }
        if (size > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i6 = 0; i6 < size; i6++) {
                jSONArray2.put(iArr[i6]);
            }
            jSONObject.put("deleteAttribute", jSONArray2);
        }
        String str2 = this.zza;
        if (str2 != null) {
            jSONObject.put("idToken", str2);
        }
        String str3 = this.zzc;
        if (str3 != null) {
            jSONObject.put(Scopes.EMAIL, str3);
        }
        String str4 = this.zzd;
        if (str4 != null) {
            jSONObject.put("password", str4);
        }
        String str5 = this.zzb;
        if (str5 != null) {
            jSONObject.put("displayName", str5);
        }
        String str6 = this.zzf;
        if (str6 != null) {
            jSONObject.put("photoUrl", str6);
        }
        String str7 = this.zze;
        if (str7 != null) {
            jSONObject.put("oobCode", str7);
        }
        String str8 = this.zzi;
        if (str8 != null) {
            jSONObject.put("tenantId", str8);
        }
        return jSONObject.toString();
    }

    public final zzadq zzb(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzh.zza().add(str);
        return this;
    }

    public final zzadq zzc(String str) {
        if (str == null) {
            this.zzg.zza().add("DISPLAY_NAME");
        } else {
            this.zzb = str;
        }
        return this;
    }

    public final zzadq zzd(String str) {
        if (str == null) {
            this.zzg.zza().add("EMAIL");
        } else {
            this.zzc = str;
        }
        return this;
    }

    public final zzadq zze(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zzadq zzf(String str) {
        this.zze = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zzadq zzg(String str) {
        if (str == null) {
            this.zzg.zza().add("PASSWORD");
        } else {
            this.zzd = str;
        }
        return this;
    }

    public final zzadq zzh(String str) {
        if (str == null) {
            this.zzg.zza().add("PHOTO_URL");
        } else {
            this.zzf = str;
        }
        return this;
    }

    public final zzadq zzi(String str) {
        this.zzi = str;
        return this;
    }

    public final String zzj() {
        return this.zzb;
    }

    public final String zzk() {
        return this.zzc;
    }

    public final String zzl() {
        return this.zzd;
    }

    public final String zzm() {
        return this.zzf;
    }

    public final boolean zzn(String str) {
        Preconditions.checkNotEmpty(str);
        return this.zzg.zza().contains(str);
    }
}
