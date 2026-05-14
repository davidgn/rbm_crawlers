package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class zzas {
    public static final /* synthetic */ int zza = 0;
    private static final ArrayList zzb = new ArrayList();
    private static final Pattern zzc = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static boolean zza(String str) {
        return "audio".equals(zzj(str));
    }

    public static boolean zzb(String str) {
        return "video".equals(zzj(str));
    }

    public static boolean zzc(String str) {
        return "image".equals(zzj(str)) || "application/x-image-uri".equals(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean zzd(String str, String str2) {
        char c5;
        zzar zzi;
        int zza2;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c5 = '\t';
                    break;
                }
                c5 = 65535;
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c5 = '\n';
                    break;
                }
                c5 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c5 = 7;
                    break;
                }
                c5 = 65535;
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c5 = '\b';
                    break;
                }
                c5 = 65535;
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c5 = 6;
                    break;
                }
                c5 = 65535;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c5 = 4;
                    break;
                }
                c5 = 65535;
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c5 = 5;
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        switch (c5) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
                return true;
            case '\n':
                return (str2 == null || (zzi = zzi(str2)) == null || (zza2 = zzi.zza()) == 0 || zza2 == 16) ? false : true;
            default:
                return false;
        }
    }

    public static String zze(int i) {
        if (i != 32) {
            if (i != 33) {
                if (i != 35) {
                    if (i != 64) {
                        if (i != 163) {
                            if (i != 177) {
                                if (i != 221) {
                                    if (i != 165) {
                                        if (i != 166) {
                                            switch (i) {
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case LocationRequest.PRIORITY_HIGH_ACCURACY /* 100 */:
                                                case 101:
                                                    return "video/mpeg2";
                                                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /* 102 */:
                                                case 103:
                                                case LocationRequest.PRIORITY_LOW_POWER /* 104 */:
                                                    return "audio/mp4a-latm";
                                                case LocationRequest.PRIORITY_NO_POWER /* 105 */:
                                                case 107:
                                                    return "audio/mpeg";
                                                case 106:
                                                    return "video/mpeg";
                                                case 108:
                                                    return "image/jpeg";
                                                default:
                                                    switch (i) {
                                                        case 169:
                                                        case 172:
                                                            return "audio/vnd.dts";
                                                        case 170:
                                                        case 171:
                                                            return "audio/vnd.dts.hd";
                                                        case 173:
                                                            return "audio/opus";
                                                        case 174:
                                                            return "audio/ac4";
                                                        default:
                                                            return null;
                                                    }
                                            }
                                        }
                                        return "audio/eac3";
                                    }
                                    return "audio/ac3";
                                }
                                return "audio/vorbis";
                            }
                            return "video/x-vnd.on2.vp9";
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return "video/mp4v-es";
    }

    public static int zzf(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zza(str)) {
            return 1;
        }
        if (zzb(str)) {
            return 2;
        }
        if ("text".equals(zzj(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if (zzc(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str) || "application/meta".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = zzb;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            String str2 = ((zzaq) arrayList.get(i)).zza;
            if (str.equals(null)) {
                return 0;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zzg(String str, String str2) {
        char c5;
        zzar zzi;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c5 = 4;
                    break;
                }
                c5 = 65535;
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    c5 = '\b';
                    break;
                }
                c5 = 65535;
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c5 = 6;
                    break;
                }
                c5 = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c5 = 5;
                    break;
                }
                c5 = 65535;
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c5 = '\t';
                    break;
                }
                c5 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c5 = 11;
                    break;
                }
                c5 = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c5 = 7;
                    break;
                }
                c5 = 65535;
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c5 = '\n';
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        switch (c5) {
            case 0:
                return 9;
            case 1:
                if (str2 == null || (zzi = zzi(str2)) == null) {
                    return 0;
                }
                return zzi.zza();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case '\b':
                return 8;
            case '\t':
                return 30;
            case '\n':
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zzh(String str) {
        char c5;
        if (str == null) {
            return null;
        }
        String zza2 = zzgrs.zza(str);
        switch (zza2.hashCode()) {
            case -1833600100:
                if (zza2.equals("video/x-mvhevc")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            case -1007807498:
                if (zza2.equals("audio/x-flac")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            case -979095690:
                if (zza2.equals("application/x-mpegurl")) {
                    c5 = 4;
                    break;
                }
                c5 = 65535;
                break;
            case -586683234:
                if (zza2.equals("audio/x-wav")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case -432836268:
                if (zza2.equals("audio/mpeg-l1")) {
                    c5 = 5;
                    break;
                }
                c5 = 65535;
                break;
            case -432836267:
                if (zza2.equals("audio/mpeg-l2")) {
                    c5 = 6;
                    break;
                }
                c5 = 65535;
                break;
            case 187090231:
                if (zza2.equals("audio/mp3")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        switch (c5) {
            case 0:
                return "video/mv-hevc";
            case 1:
                return "audio/flac";
            case 2:
                return "audio/mpeg";
            case 3:
                return "audio/wav";
            case 4:
                return "application/x-mpegURL";
            case 5:
                return "audio/mpeg-L1";
            case 6:
                return "audio/mpeg-L2";
            default:
                return zza2;
        }
    }

    public static zzar zzi(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                return new zzar(Integer.parseInt(group, 16), group2 != null ? Integer.parseInt(group2) : 0);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    private static String zzj(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }
}
