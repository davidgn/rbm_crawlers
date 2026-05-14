package com.google.protobuf;

import s.AbstractC0824e;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum EF0 uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class C {

    /* renamed from: b  reason: collision with root package name */
    public static final C f6597b;

    /* renamed from: c  reason: collision with root package name */
    public static final C f6598c;

    /* renamed from: d  reason: collision with root package name */
    public static final C[] f6599d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ C[] f6600e;

    /* renamed from: a  reason: collision with root package name */
    public final int f6601a;
    /* JADX INFO: Fake field, exist only in values array */
    C EF0;

    static {
        EnumC0326d0 enumC0326d0 = EnumC0326d0.DOUBLE;
        C c5 = new C("DOUBLE", 0, 0, 1, enumC0326d0);
        EnumC0326d0 enumC0326d02 = EnumC0326d0.FLOAT;
        C c6 = new C("FLOAT", 1, 1, 1, enumC0326d02);
        EnumC0326d0 enumC0326d03 = EnumC0326d0.LONG;
        C c7 = new C("INT64", 2, 2, 1, enumC0326d03);
        C c8 = new C("UINT64", 3, 3, 1, enumC0326d03);
        EnumC0326d0 enumC0326d04 = EnumC0326d0.INT;
        C c9 = new C("INT32", 4, 4, 1, enumC0326d04);
        C c10 = new C("FIXED64", 5, 5, 1, enumC0326d03);
        C c11 = new C("FIXED32", 6, 6, 1, enumC0326d04);
        EnumC0326d0 enumC0326d05 = EnumC0326d0.BOOLEAN;
        C c12 = new C("BOOL", 7, 7, 1, enumC0326d05);
        EnumC0326d0 enumC0326d06 = EnumC0326d0.STRING;
        C c13 = new C("STRING", 8, 8, 1, enumC0326d06);
        EnumC0326d0 enumC0326d07 = EnumC0326d0.MESSAGE;
        C c14 = new C("MESSAGE", 9, 9, 1, enumC0326d07);
        EnumC0326d0 enumC0326d08 = EnumC0326d0.BYTE_STRING;
        C c15 = new C("BYTES", 10, 10, 1, enumC0326d08);
        C c16 = new C("UINT32", 11, 11, 1, enumC0326d04);
        EnumC0326d0 enumC0326d09 = EnumC0326d0.ENUM;
        C c17 = new C("ENUM", 12, 12, 1, enumC0326d09);
        C c18 = new C("SFIXED32", 13, 13, 1, enumC0326d04);
        C c19 = new C("SFIXED64", 14, 14, 1, enumC0326d03);
        C c20 = new C("SINT32", 15, 15, 1, enumC0326d04);
        C c21 = new C("SINT64", 16, 16, 1, enumC0326d03);
        C c22 = new C("GROUP", 17, 17, 1, enumC0326d07);
        C c23 = new C("DOUBLE_LIST", 18, 18, 2, enumC0326d0);
        C c24 = new C("FLOAT_LIST", 19, 19, 2, enumC0326d02);
        C c25 = new C("INT64_LIST", 20, 20, 2, enumC0326d03);
        C c26 = new C("UINT64_LIST", 21, 21, 2, enumC0326d03);
        C c27 = new C("INT32_LIST", 22, 22, 2, enumC0326d04);
        C c28 = new C("FIXED64_LIST", 23, 23, 2, enumC0326d03);
        C c29 = new C("FIXED32_LIST", 24, 24, 2, enumC0326d04);
        C c30 = new C("BOOL_LIST", 25, 25, 2, enumC0326d05);
        C c31 = new C("STRING_LIST", 26, 26, 2, enumC0326d06);
        C c32 = new C("MESSAGE_LIST", 27, 27, 2, enumC0326d07);
        C c33 = new C("BYTES_LIST", 28, 28, 2, enumC0326d08);
        C c34 = new C("UINT32_LIST", 29, 29, 2, enumC0326d04);
        C c35 = new C("ENUM_LIST", 30, 30, 2, enumC0326d09);
        C c36 = new C("SFIXED32_LIST", 31, 31, 2, enumC0326d04);
        C c37 = new C("SFIXED64_LIST", 32, 32, 2, enumC0326d03);
        C c38 = new C("SINT32_LIST", 33, 33, 2, enumC0326d04);
        C c39 = new C("SINT64_LIST", 34, 34, 2, enumC0326d03);
        C c40 = new C("DOUBLE_LIST_PACKED", 35, 35, 3, enumC0326d0);
        f6597b = c40;
        C c41 = new C("FLOAT_LIST_PACKED", 36, 36, 3, enumC0326d02);
        C c42 = new C("INT64_LIST_PACKED", 37, 37, 3, enumC0326d03);
        C c43 = new C("UINT64_LIST_PACKED", 38, 38, 3, enumC0326d03);
        C c44 = new C("INT32_LIST_PACKED", 39, 39, 3, enumC0326d04);
        C c45 = new C("FIXED64_LIST_PACKED", 40, 40, 3, enumC0326d03);
        C c46 = new C("FIXED32_LIST_PACKED", 41, 41, 3, enumC0326d04);
        C c47 = new C("BOOL_LIST_PACKED", 42, 42, 3, enumC0326d05);
        C c48 = new C("UINT32_LIST_PACKED", 43, 43, 3, enumC0326d04);
        C c49 = new C("ENUM_LIST_PACKED", 44, 44, 3, enumC0326d09);
        C c50 = new C("SFIXED32_LIST_PACKED", 45, 45, 3, enumC0326d04);
        C c51 = new C("SFIXED64_LIST_PACKED", 46, 46, 3, enumC0326d03);
        C c52 = new C("SINT32_LIST_PACKED", 47, 47, 3, enumC0326d04);
        C c53 = new C("SINT64_LIST_PACKED", 48, 48, 3, enumC0326d03);
        f6598c = c53;
        f6600e = new C[]{c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49, c50, c51, c52, c53, new C("GROUP_LIST", 49, 49, 2, enumC0326d07), new C("MAP", 50, 50, 4, EnumC0326d0.VOID)};
        C[] values = values();
        f6599d = new C[values.length];
        for (C c54 : values) {
            f6599d[c54.f6601a] = c54;
        }
    }

    public C(String str, int i, int i4, int i5, EnumC0326d0 enumC0326d0) {
        this.f6601a = i4;
        int d2 = AbstractC0824e.d(i5);
        if (d2 == 1) {
            enumC0326d0.getClass();
        } else if (d2 == 3) {
            enumC0326d0.getClass();
        }
        if (i5 == 1) {
            enumC0326d0.ordinal();
        }
    }

    public static C valueOf(String str) {
        return (C) Enum.valueOf(C.class, str);
    }

    public static C[] values() {
        return (C[]) f6600e.clone();
    }

    public final int a() {
        return this.f6601a;
    }
}
