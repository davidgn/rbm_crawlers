package androidx.media;

import e1.i;
import java.util.Arrays;
/* loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public int f4481a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f4482b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f4483c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f4484d = -1;

    public final boolean equals(Object obj) {
        int i;
        if (obj instanceof AudioAttributesImplBase) {
            AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
            if (this.f4482b == audioAttributesImplBase.f4482b) {
                int i4 = this.f4483c;
                int i5 = audioAttributesImplBase.f4483c;
                int i6 = audioAttributesImplBase.f4484d;
                if (i6 == -1) {
                    int i7 = audioAttributesImplBase.f4481a;
                    int i8 = AudioAttributesCompat.f4477b;
                    if ((i5 & 1) != 1) {
                        if ((i5 & 4) != 4) {
                            switch (i7) {
                                case 2:
                                    i = 0;
                                    break;
                                case 3:
                                    i = 8;
                                    break;
                                case 4:
                                    i = 4;
                                    break;
                                case 5:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                    i = 5;
                                    break;
                                case 6:
                                    i = 2;
                                    break;
                                case 11:
                                    i = 10;
                                    break;
                                case 12:
                                default:
                                    i = 3;
                                    break;
                                case 13:
                                    i = 1;
                                    break;
                            }
                        } else {
                            i = 6;
                        }
                    } else {
                        i = 7;
                    }
                } else {
                    i = i6;
                }
                if (i == 6) {
                    i5 |= 4;
                } else if (i == 7) {
                    i5 |= 1;
                }
                if (i4 == (i5 & 273) && this.f4481a == audioAttributesImplBase.f4481a && this.f4484d == i6) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4482b), Integer.valueOf(this.f4483c), Integer.valueOf(this.f4481a), Integer.valueOf(this.f4484d)});
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f4484d != -1) {
            sb.append(" stream=");
            sb.append(this.f4484d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.f4481a;
        int i4 = AudioAttributesCompat.f4477b;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = i.a(i, "unknown usage ");
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.f4482b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f4483c).toUpperCase());
        return sb.toString();
    }
}
