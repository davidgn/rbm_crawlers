package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public final class zzgrs {
    public static String zza(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (zzd(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c5 = charArray[i];
                    if (zzd(c5)) {
                        charArray[i] = (char) (c5 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String zzb(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (zzc(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c5 = charArray[i];
                    if (zzc(c5)) {
                        charArray[i] = (char) (c5 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static boolean zzc(char c5) {
        return c5 >= 'a' && c5 <= 'z';
    }

    public static boolean zzd(char c5) {
        return c5 >= 'A' && c5 <= 'Z';
    }

    public static boolean zze(CharSequence charSequence, CharSequence charSequence2) {
        int zzf;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length == charSequence2.length()) {
            for (int i = 0; i < length; i++) {
                char charAt = charSequence.charAt(i);
                char charAt2 = charSequence2.charAt(i);
                if (charAt != charAt2 && ((zzf = zzf(charAt)) >= 26 || zzf != zzf(charAt2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private static int zzf(char c5) {
        return (char) ((c5 | ' ') - 97);
    }
}
