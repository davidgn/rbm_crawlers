package E;

import android.graphics.Path;
import android.util.Log;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.android.gms.location.LocationRequest;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final char f708a;

    /* renamed from: b  reason: collision with root package name */
    public final float[] f709b;

    public f(char c5, float[] fArr) {
        this.f708a = c5;
        this.f709b = fArr;
    }

    public static void a(Path path, float f5, float f6, float f7, float f8, float f9, float f10, float f11, boolean z4, boolean z5) {
        double d2;
        double d5;
        double radians = Math.toRadians(f11);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d6 = f5;
        double d7 = f6;
        double d8 = (d7 * sin) + (d6 * cos);
        double d9 = d6;
        double d10 = f9;
        double d11 = d8 / d10;
        double d12 = f10;
        double d13 = ((d7 * cos) + ((-f5) * sin)) / d12;
        double d14 = d7;
        double d15 = f8;
        double d16 = ((d15 * sin) + (f7 * cos)) / d10;
        double d17 = ((d15 * cos) + ((-f7) * sin)) / d12;
        double d18 = d11 - d16;
        double d19 = d13 - d17;
        double d20 = (d11 + d16) / 2.0d;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d19 * d19) + (d18 * d18);
        if (d22 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d23 = (1.0d / d22) - 0.25d;
        if (d23 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d22);
            float sqrt = (float) (Math.sqrt(d22) / 1.99999d);
            a(path, f5, f6, f7, f8, f9 * sqrt, f10 * sqrt, f11, z4, z5);
            return;
        }
        double sqrt2 = Math.sqrt(d23);
        double d24 = d18 * sqrt2;
        double d25 = sqrt2 * d19;
        if (z4 == z5) {
            d2 = d20 - d25;
            d5 = d21 + d24;
        } else {
            d2 = d20 + d25;
            d5 = d21 - d24;
        }
        double atan2 = Math.atan2(d13 - d5, d11 - d2);
        double atan22 = Math.atan2(d17 - d5, d16 - d2) - atan2;
        int i = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
        if (z5 != (i >= 0)) {
            atan22 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d26 = d2 * d10;
        double d27 = d5 * d12;
        double d28 = (d26 * cos) - (d27 * sin);
        double d29 = (d27 * cos) + (d26 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d30 = -d10;
        double d31 = d30 * cos2;
        double d32 = d12 * sin2;
        double d33 = (d31 * sin3) - (d32 * cos3);
        double d34 = d30 * sin2;
        double d35 = d12 * cos2;
        double d36 = (cos3 * d35) + (sin3 * d34);
        double d37 = d35;
        double d38 = atan22 / ceil;
        int i4 = 0;
        while (i4 < ceil) {
            double d39 = atan2 + d38;
            double sin4 = Math.sin(d39);
            double cos4 = Math.cos(d39);
            double d40 = d38;
            double d41 = (((d10 * cos2) * cos4) + d28) - (d32 * sin4);
            double d42 = d37;
            double d43 = d28;
            double d44 = (d42 * sin4) + (d10 * sin2 * cos4) + d29;
            double d45 = (d31 * sin4) - (d32 * cos4);
            double d46 = (cos4 * d42) + (sin4 * d34);
            double d47 = d39 - atan2;
            double tan = Math.tan(d47 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d47)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d33 * sqrt3) + d9), (float) ((d36 * sqrt3) + d14), (float) (d41 - (sqrt3 * d45)), (float) (d44 - (sqrt3 * d46)), (float) d41, (float) d44);
            i4++;
            atan2 = d39;
            d34 = d34;
            cos2 = cos2;
            ceil = ceil;
            d36 = d46;
            d10 = d10;
            d33 = d45;
            d9 = d41;
            d14 = d44;
            d28 = d43;
            d38 = d40;
            d37 = d42;
        }
    }

    public static void b(f[] fVarArr, Path path) {
        int i;
        int i4;
        char c5;
        int i5;
        int i6;
        f fVar;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        f[] fVarArr2 = fVarArr;
        int i7 = 6;
        float[] fArr = new float[6];
        int length = fVarArr2.length;
        int i8 = 0;
        char c6 = 'm';
        while (i8 < length) {
            f fVar2 = fVarArr2[i8];
            char c7 = fVar2.f708a;
            float f17 = fArr[0];
            float f18 = fArr[1];
            float f19 = fArr[2];
            float f20 = fArr[3];
            float f21 = fArr[4];
            float f22 = fArr[5];
            switch (c7) {
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = i7;
                    break;
                case 'H':
                case 'V':
                case LocationRequest.PRIORITY_LOW_POWER /* 104 */:
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f21, f22);
                    f17 = f21;
                    f19 = f17;
                    f18 = f22;
                    f20 = f18;
                default:
                    i = 2;
                    break;
            }
            float f23 = f21;
            float f24 = f22;
            float f25 = f17;
            float f26 = f18;
            int i9 = 0;
            while (true) {
                float[] fArr2 = fVar2.f709b;
                if (i9 < fArr2.length) {
                    if (c7 != 'A') {
                        if (c7 != 'C') {
                            if (c7 == 'H') {
                                i4 = i9;
                                c5 = c7;
                                i5 = i8;
                                i6 = length;
                                fVar = fVar2;
                                path.lineTo(fArr2[i4], f26);
                                f25 = fArr2[i4];
                            } else if (c7 == 'Q') {
                                i4 = i9;
                                c5 = c7;
                                i5 = i8;
                                i6 = length;
                                fVar = fVar2;
                                float f27 = fArr2[i4];
                                int i10 = i4 + 1;
                                float f28 = fArr2[i10];
                                int i11 = i4 + 2;
                                int i12 = i4 + 3;
                                path.quadTo(f27, f28, fArr2[i11], fArr2[i12]);
                                f5 = fArr2[i4];
                                f6 = fArr2[i10];
                                f25 = fArr2[i11];
                                f26 = fArr2[i12];
                            } else if (c7 == 'V') {
                                i4 = i9;
                                c5 = c7;
                                i5 = i8;
                                i6 = length;
                                fVar = fVar2;
                                path.lineTo(f25, fArr2[i4]);
                                f26 = fArr2[i4];
                            } else if (c7 != 'a') {
                                if (c7 != 'c') {
                                    if (c7 != 'h') {
                                        if (c7 == 'q') {
                                            i4 = i9;
                                            float f29 = f26;
                                            float f30 = f25;
                                            int i13 = i4 + 1;
                                            int i14 = i4 + 2;
                                            int i15 = i4 + 3;
                                            path.rQuadTo(fArr2[i4], fArr2[i13], fArr2[i14], fArr2[i15]);
                                            float f31 = f30 + fArr2[i4];
                                            float f32 = f30 + fArr2[i14];
                                            f26 = f29 + fArr2[i15];
                                            f20 = fArr2[i13] + f29;
                                            f19 = f31;
                                            c5 = c7;
                                            i5 = i8;
                                            i6 = length;
                                            f25 = f32;
                                        } else if (c7 == 'v') {
                                            i4 = i9;
                                            path.rLineTo(0.0f, fArr2[i4]);
                                            f26 += fArr2[i4];
                                        } else if (c7 == 'L') {
                                            i4 = i9;
                                            int i16 = i4 + 1;
                                            path.lineTo(fArr2[i4], fArr2[i16]);
                                            f25 = fArr2[i4];
                                            f26 = fArr2[i16];
                                        } else if (c7 == 'M') {
                                            i4 = i9;
                                            f25 = fArr2[i4];
                                            f26 = fArr2[i4 + 1];
                                            if (i4 > 0) {
                                                path.lineTo(f25, f26);
                                            } else {
                                                path.moveTo(f25, f26);
                                                f24 = f26;
                                                f23 = f25;
                                            }
                                        } else if (c7 == 'S') {
                                            i4 = i9;
                                            float f33 = f26;
                                            float f34 = f25;
                                            if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                f11 = (f33 * 2.0f) - f20;
                                                f12 = (f34 * 2.0f) - f19;
                                            } else {
                                                f12 = f34;
                                                f11 = f33;
                                            }
                                            int i17 = i4 + 1;
                                            int i18 = i4 + 2;
                                            int i19 = i4 + 3;
                                            path.cubicTo(f12, f11, fArr2[i4], fArr2[i17], fArr2[i18], fArr2[i19]);
                                            float f35 = fArr2[i4];
                                            float f36 = fArr2[i17];
                                            f25 = fArr2[i18];
                                            f26 = fArr2[i19];
                                            f20 = f36;
                                            f19 = f35;
                                        } else if (c7 == 'T') {
                                            i4 = i9;
                                            float f37 = f26;
                                            float f38 = f25;
                                            if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                f7 = (f38 * 2.0f) - f19;
                                                f8 = (f37 * 2.0f) - f20;
                                            } else {
                                                f7 = f38;
                                                f8 = f37;
                                            }
                                            int i20 = i4 + 1;
                                            path.quadTo(f7, f8, fArr2[i4], fArr2[i20]);
                                            f9 = fArr2[i4];
                                            f10 = fArr2[i20];
                                        } else if (c7 == 'l') {
                                            i4 = i9;
                                            int i21 = i4 + 1;
                                            path.rLineTo(fArr2[i4], fArr2[i21]);
                                            f25 += fArr2[i4];
                                            f26 += fArr2[i21];
                                        } else if (c7 == 'm') {
                                            i4 = i9;
                                            float f39 = fArr2[i4];
                                            f25 += f39;
                                            float f40 = fArr2[i4 + 1];
                                            f26 += f40;
                                            if (i4 > 0) {
                                                path.rLineTo(f39, f40);
                                            } else {
                                                path.rMoveTo(f39, f40);
                                                f24 = f26;
                                                f23 = f25;
                                            }
                                        } else if (c7 == 's') {
                                            if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                float f41 = f25 - f19;
                                                f13 = f26 - f20;
                                                f14 = f41;
                                            } else {
                                                f13 = 0.0f;
                                                f14 = 0.0f;
                                            }
                                            int i22 = i9 + 1;
                                            int i23 = i9 + 2;
                                            int i24 = i9 + 3;
                                            i4 = i9;
                                            float f42 = f26;
                                            float f43 = f25;
                                            path.rCubicTo(f14, f13, fArr2[i9], fArr2[i22], fArr2[i23], fArr2[i24]);
                                            f7 = f43 + fArr2[i4];
                                            f8 = f42 + fArr2[i22];
                                            f9 = f43 + fArr2[i23];
                                            f10 = fArr2[i24] + f42;
                                        } else if (c7 != 't') {
                                            i4 = i9;
                                        } else {
                                            if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                f15 = f25 - f19;
                                                f16 = f26 - f20;
                                            } else {
                                                f16 = 0.0f;
                                                f15 = 0.0f;
                                            }
                                            int i25 = i9 + 1;
                                            path.rQuadTo(f15, f16, fArr2[i9], fArr2[i25]);
                                            float f44 = f15 + f25;
                                            float f45 = f16 + f26;
                                            f25 += fArr2[i9];
                                            f26 += fArr2[i25];
                                            f20 = f45;
                                            i4 = i9;
                                            c5 = c7;
                                            i5 = i8;
                                            i6 = length;
                                            f19 = f44;
                                        }
                                        fVar = fVar2;
                                    } else {
                                        i4 = i9;
                                        path.rLineTo(fArr2[i4], 0.0f);
                                        f25 += fArr2[i4];
                                    }
                                    c5 = c7;
                                    i5 = i8;
                                    i6 = length;
                                    fVar = fVar2;
                                } else {
                                    i4 = i9;
                                    float f46 = f26;
                                    float f47 = f25;
                                    int i26 = i4 + 2;
                                    int i27 = i4 + 3;
                                    int i28 = i4 + 4;
                                    int i29 = i4 + 5;
                                    path.rCubicTo(fArr2[i4], fArr2[i4 + 1], fArr2[i26], fArr2[i27], fArr2[i28], fArr2[i29]);
                                    f7 = f47 + fArr2[i26];
                                    f8 = f46 + fArr2[i27];
                                    f9 = f47 + fArr2[i28];
                                    f10 = fArr2[i29] + f46;
                                }
                                f20 = f8;
                                f19 = f7;
                                c5 = c7;
                                i5 = i8;
                                i6 = length;
                                f25 = f9;
                                f26 = f10;
                                fVar = fVar2;
                            } else {
                                i4 = i9;
                                float f48 = f26;
                                float f49 = f25;
                                int i30 = i4 + 5;
                                int i31 = i4 + 6;
                                c5 = c7;
                                i6 = length;
                                fVar = fVar2;
                                i5 = i8;
                                a(path, f49, f48, fArr2[i30] + f49, fArr2[i31] + f48, fArr2[i4], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3] != 0.0f, fArr2[i4 + 4] != 0.0f);
                                f25 = f49 + fArr2[i30];
                                f26 = f48 + fArr2[i31];
                            }
                            i9 = i4 + i;
                            fVar2 = fVar;
                            length = i6;
                            c6 = c5;
                            c7 = c6;
                            i8 = i5;
                        } else {
                            i4 = i9;
                            c5 = c7;
                            i5 = i8;
                            i6 = length;
                            fVar = fVar2;
                            int i32 = i4 + 2;
                            int i33 = i4 + 3;
                            int i34 = i4 + 4;
                            int i35 = i4 + 5;
                            path.cubicTo(fArr2[i4], fArr2[i4 + 1], fArr2[i32], fArr2[i33], fArr2[i34], fArr2[i35]);
                            f25 = fArr2[i34];
                            f26 = fArr2[i35];
                            f5 = fArr2[i32];
                            f6 = fArr2[i33];
                        }
                        f19 = f5;
                        f20 = f6;
                        i9 = i4 + i;
                        fVar2 = fVar;
                        length = i6;
                        c6 = c5;
                        c7 = c6;
                        i8 = i5;
                    } else {
                        i4 = i9;
                        c5 = c7;
                        i5 = i8;
                        i6 = length;
                        fVar = fVar2;
                        int i36 = i4 + 5;
                        int i37 = i4 + 6;
                        a(path, f25, f26, fArr2[i36], fArr2[i37], fArr2[i4], fArr2[i4 + 1], fArr2[i4 + 2], fArr2[i4 + 3] != 0.0f, fArr2[i4 + 4] != 0.0f);
                        f25 = fArr2[i36];
                        f26 = fArr2[i37];
                    }
                    f20 = f26;
                    f19 = f25;
                    i9 = i4 + i;
                    fVar2 = fVar;
                    length = i6;
                    c6 = c5;
                    c7 = c6;
                    i8 = i5;
                }
            }
            fArr[0] = f25;
            fArr[1] = f26;
            fArr[2] = f19;
            fArr[3] = f20;
            fArr[4] = f23;
            fArr[5] = f24;
            c6 = fVar2.f708a;
            i8++;
            fVarArr2 = fVarArr;
            length = length;
            i7 = 6;
        }
    }
}
