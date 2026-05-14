package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.util.Strings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzadz  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzadz {
    private List zza;

    public zzadz() {
        this(null);
    }

    public final List zza() {
        return this.zza;
    }

    public zzadz(int i, List list) {
        if (!list.isEmpty()) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                list.set(i4, Strings.emptyToNull((String) list.get(i4)));
            }
            this.zza = Collections.unmodifiableList(list);
            return;
        }
        this.zza = Collections.emptyList();
    }

    public zzadz(List list) {
        this.zza = new ArrayList();
    }
}
