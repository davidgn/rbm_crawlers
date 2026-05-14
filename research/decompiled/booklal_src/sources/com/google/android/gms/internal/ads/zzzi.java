package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
final /* synthetic */ class zzzi implements Comparator {
    static final /* synthetic */ zzzi zza = new zzzi();

    private /* synthetic */ zzzi() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return ((zzzr) ((List) obj).get(0)).compareTo((zzzr) ((List) obj2).get(0));
    }
}
