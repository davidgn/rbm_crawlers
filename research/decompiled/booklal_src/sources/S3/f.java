package S3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f2596a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ f[] f2597b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, S3.f] */
    static {
        ?? r02 = new Enum("COMPLETE", 0);
        f2596a = r02;
        f2597b = new f[]{r02};
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) f2597b.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "NotificationLite.Complete";
    }
}
