package N2;
/* loaded from: classes2.dex */
public final class b extends Throwable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2096a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(String str, int i) {
        super(str);
        this.f2096a = i;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        int i = this.f2096a;
        synchronized (this) {
            switch (i) {
                case 0:
                    return this;
                case 1:
                    return this;
                case 2:
                    return this;
                default:
                    return this;
            }
        }
    }
}
