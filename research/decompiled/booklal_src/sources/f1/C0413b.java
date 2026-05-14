package f1;
/* renamed from: f1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0413b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7285a;

    public final int a(Object obj) {
        switch (this.f7285a) {
            case 0:
                return ((byte[]) obj).length;
            default:
                return ((int[]) obj).length;
        }
    }

    public final int b() {
        switch (this.f7285a) {
            case 0:
                return 1;
            default:
                return 4;
        }
    }

    public final String c() {
        switch (this.f7285a) {
            case 0:
                return "ByteArrayPool";
            default:
                return "IntegerArrayPool";
        }
    }
}
