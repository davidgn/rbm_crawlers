package K0;

import android.os.Build;
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1370d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i, String str, String str2) {
        super(str, str2);
        this.f1370d = i;
    }

    @Override // K0.c
    public final boolean a() {
        switch (this.f1370d) {
            case 0:
                return true;
            case 1:
                return true;
            case 2:
                return false;
            case 3:
                return true;
            case 4:
                return true;
            case 5:
                return Build.VERSION.SDK_INT >= 28;
            default:
                return Build.VERSION.SDK_INT >= 29;
        }
    }
}
