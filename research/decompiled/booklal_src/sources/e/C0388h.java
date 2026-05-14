package e;

import f.AbstractC0402a;
import java.util.ArrayList;
import java.util.LinkedHashMap;
/* renamed from: e.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0388h extends AbstractC0383c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7004a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AbstractC0389i f7005b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f7006c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AbstractC0402a f7007d;

    public /* synthetic */ C0388h(AbstractC0389i abstractC0389i, String str, AbstractC0402a abstractC0402a, int i) {
        this.f7004a = i;
        this.f7005b = abstractC0389i;
        this.f7006c = str;
        this.f7007d = abstractC0402a;
    }

    @Override // e.AbstractC0383c
    public final void a(Object obj) {
        switch (this.f7004a) {
            case 0:
                AbstractC0389i abstractC0389i = this.f7005b;
                LinkedHashMap linkedHashMap = abstractC0389i.f7009b;
                String str = this.f7006c;
                Object obj2 = linkedHashMap.get(str);
                AbstractC0402a abstractC0402a = this.f7007d;
                if (obj2 == null) {
                    throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0402a + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
                }
                int intValue = ((Number) obj2).intValue();
                ArrayList arrayList = abstractC0389i.f7011d;
                arrayList.add(str);
                try {
                    abstractC0389i.b(intValue, abstractC0402a, obj);
                    return;
                } catch (Exception e5) {
                    arrayList.remove(str);
                    throw e5;
                }
            default:
                AbstractC0389i abstractC0389i2 = this.f7005b;
                LinkedHashMap linkedHashMap2 = abstractC0389i2.f7009b;
                String str2 = this.f7006c;
                Object obj3 = linkedHashMap2.get(str2);
                AbstractC0402a abstractC0402a2 = this.f7007d;
                if (obj3 == null) {
                    throw new IllegalStateException(("Attempting to launch an unregistered ActivityResultLauncher with contract " + abstractC0402a2 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().").toString());
                }
                int intValue2 = ((Number) obj3).intValue();
                ArrayList arrayList2 = abstractC0389i2.f7011d;
                arrayList2.add(str2);
                try {
                    abstractC0389i2.b(intValue2, abstractC0402a2, obj);
                    return;
                } catch (Exception e6) {
                    arrayList2.remove(str2);
                    throw e6;
                }
        }
    }

    public void b() {
        this.f7005b.f(this.f7006c);
    }
}
