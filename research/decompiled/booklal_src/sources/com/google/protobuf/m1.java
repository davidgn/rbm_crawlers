package com.google.protobuf;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum EF12 uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public class m1 {

    /* renamed from: c  reason: collision with root package name */
    public static final i1 f6740c;

    /* renamed from: d  reason: collision with root package name */
    public static final j1 f6741d;

    /* renamed from: e  reason: collision with root package name */
    public static final k1 f6742e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ m1[] f6743f;

    /* renamed from: a  reason: collision with root package name */
    public final n1 f6744a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6745b;
    /* JADX INFO: Fake field, exist only in values array */
    m1 EF10;
    /* JADX INFO: Fake field, exist only in values array */
    m1 EF11;
    /* JADX INFO: Fake field, exist only in values array */
    m1 EF12;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.protobuf.i1, com.google.protobuf.m1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.protobuf.k1, com.google.protobuf.m1] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.google.protobuf.j1, com.google.protobuf.m1] */
    static {
        m1 m1Var = new m1("DOUBLE", 0, n1.DOUBLE, 1);
        m1 m1Var2 = new m1("FLOAT", 1, n1.FLOAT, 5);
        n1 n1Var = n1.LONG;
        m1 m1Var3 = new m1("INT64", 2, n1Var, 0);
        m1 m1Var4 = new m1("UINT64", 3, n1Var, 0);
        n1 n1Var2 = n1.INT;
        m1 m1Var5 = new m1("INT32", 4, n1Var2, 0);
        m1 m1Var6 = new m1("FIXED64", 5, n1Var, 1);
        m1 m1Var7 = new m1("FIXED32", 6, n1Var2, 5);
        m1 m1Var8 = new m1("BOOL", 7, n1.BOOLEAN, 0);
        ?? m1Var9 = new m1("STRING", 8, n1.STRING, 2);
        f6740c = m1Var9;
        n1 n1Var3 = n1.MESSAGE;
        ?? m1Var10 = new m1("GROUP", 9, n1Var3, 3);
        f6741d = m1Var10;
        ?? m1Var11 = new m1("MESSAGE", 10, n1Var3, 2);
        f6742e = m1Var11;
        f6743f = new m1[]{m1Var, m1Var2, m1Var3, m1Var4, m1Var5, m1Var6, m1Var7, m1Var8, m1Var9, m1Var10, m1Var11, new m1("BYTES", 11, n1.BYTE_STRING, 2), new m1("UINT32", 12, n1Var2, 0), new m1("ENUM", 13, n1.ENUM, 0), new m1("SFIXED32", 14, n1Var2, 5), new m1("SFIXED64", 15, n1Var, 1), new m1("SINT32", 16, n1Var2, 0), new m1("SINT64", 17, n1Var, 0)};
    }

    public m1(String str, int i, n1 n1Var, int i4) {
        this.f6744a = n1Var;
        this.f6745b = i4;
    }

    public static m1 valueOf(String str) {
        return (m1) Enum.valueOf(m1.class, str);
    }

    public static m1[] values() {
        return (m1[]) f6743f.clone();
    }
}
