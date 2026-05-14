package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgsc extends zzgrz implements Serializable {
    private final Pattern zza;

    public zzgsc(Pattern pattern) {
        pattern.getClass();
        this.zza = pattern;
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgrz
    public final zzgry zza(CharSequence charSequence) {
        return new zzgsb(this.zza.matcher(charSequence));
    }
}
