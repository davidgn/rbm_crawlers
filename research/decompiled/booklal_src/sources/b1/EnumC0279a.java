package b1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: b1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0279a {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0279a f4781a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0279a f4782b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0279a f4783c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0279a f4784d;

    /* renamed from: e  reason: collision with root package name */
    public static final EnumC0279a f4785e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ EnumC0279a[] f4786f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, b1.a] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, b1.a] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, b1.a] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, b1.a] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, b1.a] */
    static {
        ?? r02 = new Enum("LOCAL", 0);
        f4781a = r02;
        ?? r12 = new Enum("REMOTE", 1);
        f4782b = r12;
        ?? r22 = new Enum("DATA_DISK_CACHE", 2);
        f4783c = r22;
        ?? r32 = new Enum("RESOURCE_DISK_CACHE", 3);
        f4784d = r32;
        ?? r42 = new Enum("MEMORY_CACHE", 4);
        f4785e = r42;
        f4786f = new EnumC0279a[]{r02, r12, r22, r32, r42};
    }

    public static EnumC0279a valueOf(String str) {
        return (EnumC0279a) Enum.valueOf(EnumC0279a.class, str);
    }

    public static EnumC0279a[] values() {
        return (EnumC0279a[]) f4786f.clone();
    }
}
