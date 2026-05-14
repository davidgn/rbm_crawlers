package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
enum zzgsm implements zzgsk {
    ALWAYS_TRUE,
    ALWAYS_FALSE,
    IS_NULL,
    NOT_NULL;

    @Override // java.lang.Enum
    public final /* synthetic */ String toString() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? super.toString() : "Predicates.notNull()" : "Predicates.isNull()" : "Predicates.alwaysFalse()" : "Predicates.alwaysTrue()";
    }

    @Override // com.google.android.gms.internal.ads.zzgsk
    public final /* synthetic */ boolean zza(Object obj) {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return obj != null;
                    }
                    throw null;
                } else if (obj == null) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}
