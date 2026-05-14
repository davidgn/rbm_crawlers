package B0;
/* loaded from: classes.dex */
public final class c extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f195a;

    @Override // java.lang.Throwable
    public String getMessage() {
        switch (this.f195a) {
            case 1:
                return "Chain of Causes for CompositeException In Order Received =>";
            default:
                return super.getMessage();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(String str, int i) {
        super(str);
        this.f195a = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(String str, Throwable th, int i) {
        super(str, th);
        this.f195a = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(Throwable th) {
        super(th);
        this.f195a = 0;
    }
}
