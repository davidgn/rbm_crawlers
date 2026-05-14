package c4;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: c4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0309a {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0309a f4922a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ EnumC0309a[] f4923b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, c4.a] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, c4.a] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, c4.a] */
    static {
        ?? r02 = new Enum("COROUTINE_SUSPENDED", 0);
        f4922a = r02;
        f4923b = new EnumC0309a[]{r02, new Enum("UNDECIDED", 1), new Enum("RESUMED", 2)};
    }

    public static EnumC0309a valueOf(String str) {
        return (EnumC0309a) Enum.valueOf(EnumC0309a.class, str);
    }

    public static EnumC0309a[] values() {
        return (EnumC0309a[]) f4923b.clone();
    }
}
