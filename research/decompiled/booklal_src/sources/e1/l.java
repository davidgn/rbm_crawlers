package e1;

import b1.EnumC0279a;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: b  reason: collision with root package name */
    public static final l f7111b = new l(0);

    /* renamed from: c  reason: collision with root package name */
    public static final l f7112c = new l(1);

    /* renamed from: d  reason: collision with root package name */
    public static final l f7113d = new l(2);

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7114a;

    public /* synthetic */ l(int i) {
        this.f7114a = i;
    }

    public final boolean a(EnumC0279a enumC0279a) {
        switch (this.f7114a) {
            case 0:
                return false;
            case 1:
                return (enumC0279a == EnumC0279a.f4783c || enumC0279a == EnumC0279a.f4785e) ? false : true;
            default:
                return enumC0279a == EnumC0279a.f4782b;
        }
    }
}
