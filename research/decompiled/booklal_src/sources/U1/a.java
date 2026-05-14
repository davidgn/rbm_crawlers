package U1;
/* loaded from: classes.dex */
public final class a implements X3.a {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f2741c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public volatile b f2742a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Object f2743b;

    /* JADX WARN: Type inference failed for: r0v1, types: [X3.a, U1.a, java.lang.Object] */
    public static X3.a a(b bVar) {
        if (bVar instanceof a) {
            return bVar;
        }
        ?? obj = new Object();
        obj.f2743b = f2741c;
        obj.f2742a = bVar;
        return obj;
    }

    @Override // X3.a
    public final Object get() {
        Object obj = this.f2743b;
        Object obj2 = f2741c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f2743b;
                    if (obj == obj2) {
                        obj = this.f2742a.get();
                        Object obj3 = this.f2743b;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f2743b = obj;
                        this.f2742a = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
