package j3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j3.q  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0520q {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0520q f8088a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0520q f8089b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0520q f8090c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0520q f8091d;

    /* renamed from: e  reason: collision with root package name */
    public static final EnumC0520q f8092e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ EnumC0520q[] f8093f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j3.q] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j3.q] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, j3.q] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, j3.q] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, j3.q] */
    static {
        ?? r02 = new Enum("CONNECTING", 0);
        f8088a = r02;
        ?? r12 = new Enum("READY", 1);
        f8089b = r12;
        ?? r22 = new Enum("TRANSIENT_FAILURE", 2);
        f8090c = r22;
        ?? r32 = new Enum("IDLE", 3);
        f8091d = r32;
        ?? r42 = new Enum("SHUTDOWN", 4);
        f8092e = r42;
        f8093f = new EnumC0520q[]{r02, r12, r22, r32, r42};
    }

    public static EnumC0520q valueOf(String str) {
        return (EnumC0520q) Enum.valueOf(EnumC0520q.class, str);
    }

    public static EnumC0520q[] values() {
        return (EnumC0520q[]) f8093f.clone();
    }
}
