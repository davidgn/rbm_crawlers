package b1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: b1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0280b {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0280b f4787a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0280b f4788b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0280b f4789c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ EnumC0280b[] f4790d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, b1.b] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, b1.b] */
    static {
        ?? r02 = new Enum("PREFER_ARGB_8888", 0);
        f4787a = r02;
        ?? r12 = new Enum("PREFER_RGB_565", 1);
        f4788b = r12;
        f4790d = new EnumC0280b[]{r02, r12};
        f4789c = r02;
    }

    public static EnumC0280b valueOf(String str) {
        return (EnumC0280b) Enum.valueOf(EnumC0280b.class, str);
    }

    public static EnumC0280b[] values() {
        return (EnumC0280b[]) f4790d.clone();
    }
}
