package G2;
/* loaded from: classes2.dex */
public final class g implements j {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f960c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public volatile h f961a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Object f962b;

    /* JADX WARN: Type inference failed for: r0v1, types: [G2.g, java.lang.Object] */
    public static g b(h hVar) {
        if (hVar instanceof g) {
            return (g) hVar;
        }
        ?? obj = new Object();
        obj.f962b = f960c;
        obj.f961a = hVar;
        return obj;
    }

    @Override // G2.j
    public final Object a() {
        Object obj = this.f962b;
        Object obj2 = f960c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f962b;
                    if (obj == obj2) {
                        obj = this.f961a.a();
                        Object obj3 = this.f962b;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f962b = obj;
                        this.f961a = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
