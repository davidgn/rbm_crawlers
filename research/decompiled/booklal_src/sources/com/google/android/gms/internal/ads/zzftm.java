package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzftm {
    private final zzfty zza;
    private final zzfty zzb;
    private final boolean zzc;
    private final zzftq zzd;
    private final zzftt zze;

    private zzftm(zzftq zzftqVar, zzftt zzfttVar, zzfty zzftyVar, zzfty zzftyVar2, boolean z4) {
        this.zzd = zzftqVar;
        this.zze = zzfttVar;
        this.zza = zzftyVar;
        if (zzftyVar2 == null) {
            this.zzb = zzfty.NONE;
        } else {
            this.zzb = zzftyVar2;
        }
        this.zzc = z4;
    }

    public static zzftm zza(zzftq zzftqVar, zzftt zzfttVar, zzfty zzftyVar, zzfty zzftyVar2, boolean z4) {
        zzfvj.zzb(zzftqVar, "CreativeType is null");
        zzfvj.zzb(zzfttVar, "ImpressionType is null");
        zzfvj.zzb(zzftyVar, "Impression owner is null");
        if (zzftyVar != zzfty.NONE) {
            if (zzftqVar == zzftq.DEFINED_BY_JAVASCRIPT && zzftyVar == zzfty.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfttVar == zzftt.DEFINED_BY_JAVASCRIPT && zzftyVar == zzfty.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            return new zzftm(zzftqVar, zzfttVar, zzftyVar, zzftyVar2, z4);
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfvf.zzc(jSONObject, "impressionOwner", this.zza);
        zzfvf.zzc(jSONObject, "mediaEventsOwner", this.zzb);
        zzfvf.zzc(jSONObject, "creativeType", this.zzd);
        zzfvf.zzc(jSONObject, "impressionType", this.zze);
        zzfvf.zzc(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.zzc));
        return jSONObject;
    }
}
