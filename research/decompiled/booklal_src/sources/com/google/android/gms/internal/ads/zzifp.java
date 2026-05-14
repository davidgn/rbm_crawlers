package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zzifp {
    public static String zza(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b5 : bArr) {
            if (b5 == 34) {
                sb.append("\\\"");
            } else if (b5 == 39) {
                sb.append("\\'");
            } else if (b5 != 92) {
                switch (b5) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (b5 < 32 || b5 > 126) {
                            sb.append('\\');
                            sb.append((char) (((b5 >>> 6) & 3) + 48));
                            sb.append((char) (((b5 >>> 3) & 7) + 48));
                            sb.append((char) ((b5 & 7) + 48));
                            break;
                        } else {
                            sb.append((char) b5);
                            continue;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
