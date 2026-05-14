package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class zzfuy implements zzfuv {
    private final int[] zza = new int[2];

    @Override // com.google.android.gms.internal.ads.zzfuv
    public final JSONObject zza(View view) {
        if (view == null) {
            return zzfvf.zzb(0, 0, 0, 0);
        }
        int[] iArr = this.zza;
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(iArr);
        return zzfvf.zzb(iArr[0], iArr[1], width, height);
    }

    @Override // com.google.android.gms.internal.ads.zzfuv
    public final void zzb(View view, JSONObject jSONObject, zzfuu zzfuuVar, boolean z4, boolean z5) {
        int i;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z4) {
                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                    zzfuuVar.zza(viewGroup.getChildAt(i4), this, jSONObject, z5);
                }
                return;
            }
            HashMap hashMap = new HashMap();
            for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                View childAt = viewGroup.getChildAt(i5);
                ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(Float.valueOf(childAt.getZ()), arrayList);
                }
                arrayList.add(childAt);
            }
            ArrayList arrayList2 = new ArrayList(hashMap.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i6 = 0;
            while (i6 < size) {
                ArrayList arrayList3 = (ArrayList) hashMap.get((Float) arrayList2.get(i6));
                int size2 = arrayList3.size();
                int i7 = 0;
                while (true) {
                    i = i6 + 1;
                    if (i7 < size2) {
                        zzfuuVar.zza((View) arrayList3.get(i7), this, jSONObject, z5);
                        i7++;
                    }
                }
                i6 = i;
            }
        }
    }
}
