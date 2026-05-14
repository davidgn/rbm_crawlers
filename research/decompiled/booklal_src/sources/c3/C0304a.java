package c3;

import android.content.Context;
import android.util.Log;
import com.booklal.booklal.R;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: c3.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0304a implements Comparable {

    /* renamed from: f  reason: collision with root package name */
    public static o f4861f;

    /* renamed from: l  reason: collision with root package name */
    public static String f4862l;

    /* renamed from: m  reason: collision with root package name */
    public static String f4863m;

    /* renamed from: n  reason: collision with root package name */
    public static String f4864n;
    public static ArrayList o;

    /* renamed from: a  reason: collision with root package name */
    public String f4865a;

    /* renamed from: b  reason: collision with root package name */
    public String f4866b;

    /* renamed from: c  reason: collision with root package name */
    public String f4867c;

    /* renamed from: d  reason: collision with root package name */
    public String f4868d;

    /* renamed from: e  reason: collision with root package name */
    public int f4869e;

    public C0304a(String str, String str2, String str3) {
        this.f4869e = -99;
        this.f4865a = str.toUpperCase(Locale.US);
        this.f4866b = str2;
        this.f4867c = str3;
        this.f4869e = -99;
    }

    public static boolean a(String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            try {
                return str2.toLowerCase(Locale.ROOT).contains(str3);
            } catch (Exception unused) {
                Log.w("CCPCountry", str + ":" + str2 + " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:" + str3);
            }
        }
        return false;
    }

    public static C0304a b(Context context, o oVar, ArrayList arrayList, int i) {
        return c(context, oVar, arrayList, i + "");
    }

    public static C0304a c(Context context, o oVar, ArrayList arrayList, String str) {
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0304a c0304a = (C0304a) it.next();
                if (c0304a.f4866b.equals(str)) {
                    return c0304a;
                }
            }
        }
        for (C0304a c0304a2 : j(context, oVar)) {
            if (c0304a2.f4866b.equals(str)) {
                return c0304a2;
            }
        }
        return null;
    }

    public static C0304a d(String str) {
        Iterator it = i().iterator();
        while (it.hasNext()) {
            C0304a c0304a = (C0304a) it.next();
            if (c0304a.f4866b.equals(str)) {
                return c0304a;
            }
        }
        return null;
    }

    public static C0304a e(String str) {
        Iterator it = i().iterator();
        while (it.hasNext()) {
            C0304a c0304a = (C0304a) it.next();
            if (c0304a.f4865a.equalsIgnoreCase(str)) {
                return c0304a;
            }
        }
        return null;
    }

    public static C0304a f(Context context, o oVar, String str) {
        for (C0304a c0304a : j(context, oVar)) {
            if (c0304a.f4865a.equalsIgnoreCase(str)) {
                return c0304a;
            }
        }
        return null;
    }

    public static String g(C0304a c0304a) {
        String lowerCase = c0304a.f4865a.toLowerCase();
        lowerCase.getClass();
        char c5 = 65535;
        switch (lowerCase.hashCode()) {
            case 3107:
                if (lowerCase.equals("ad")) {
                    c5 = 0;
                    break;
                }
                break;
            case 3108:
                if (lowerCase.equals("ae")) {
                    c5 = 1;
                    break;
                }
                break;
            case 3109:
                if (lowerCase.equals("af")) {
                    c5 = 2;
                    break;
                }
                break;
            case 3110:
                if (lowerCase.equals("ag")) {
                    c5 = 3;
                    break;
                }
                break;
            case 3112:
                if (lowerCase.equals("ai")) {
                    c5 = 4;
                    break;
                }
                break;
            case 3115:
                if (lowerCase.equals("al")) {
                    c5 = 5;
                    break;
                }
                break;
            case 3116:
                if (lowerCase.equals("am")) {
                    c5 = 6;
                    break;
                }
                break;
            case 3118:
                if (lowerCase.equals("ao")) {
                    c5 = 7;
                    break;
                }
                break;
            case 3120:
                if (lowerCase.equals("aq")) {
                    c5 = '\b';
                    break;
                }
                break;
            case 3121:
                if (lowerCase.equals("ar")) {
                    c5 = '\t';
                    break;
                }
                break;
            case 3122:
                if (lowerCase.equals("as")) {
                    c5 = '\n';
                    break;
                }
                break;
            case 3123:
                if (lowerCase.equals("at")) {
                    c5 = 11;
                    break;
                }
                break;
            case 3124:
                if (lowerCase.equals("au")) {
                    c5 = '\f';
                    break;
                }
                break;
            case 3126:
                if (lowerCase.equals("aw")) {
                    c5 = '\r';
                    break;
                }
                break;
            case 3127:
                if (lowerCase.equals("ax")) {
                    c5 = 14;
                    break;
                }
                break;
            case 3129:
                if (lowerCase.equals("az")) {
                    c5 = 15;
                    break;
                }
                break;
            case 3135:
                if (lowerCase.equals("ba")) {
                    c5 = 16;
                    break;
                }
                break;
            case 3136:
                if (lowerCase.equals("bb")) {
                    c5 = 17;
                    break;
                }
                break;
            case 3138:
                if (lowerCase.equals("bd")) {
                    c5 = 18;
                    break;
                }
                break;
            case 3139:
                if (lowerCase.equals("be")) {
                    c5 = 19;
                    break;
                }
                break;
            case 3140:
                if (lowerCase.equals("bf")) {
                    c5 = 20;
                    break;
                }
                break;
            case 3141:
                if (lowerCase.equals("bg")) {
                    c5 = 21;
                    break;
                }
                break;
            case 3142:
                if (lowerCase.equals("bh")) {
                    c5 = 22;
                    break;
                }
                break;
            case 3143:
                if (lowerCase.equals("bi")) {
                    c5 = 23;
                    break;
                }
                break;
            case 3144:
                if (lowerCase.equals("bj")) {
                    c5 = 24;
                    break;
                }
                break;
            case 3146:
                if (lowerCase.equals("bl")) {
                    c5 = 25;
                    break;
                }
                break;
            case 3147:
                if (lowerCase.equals("bm")) {
                    c5 = 26;
                    break;
                }
                break;
            case 3148:
                if (lowerCase.equals("bn")) {
                    c5 = 27;
                    break;
                }
                break;
            case 3149:
                if (lowerCase.equals("bo")) {
                    c5 = 28;
                    break;
                }
                break;
            case 3151:
                if (lowerCase.equals("bq")) {
                    c5 = 29;
                    break;
                }
                break;
            case 3152:
                if (lowerCase.equals("br")) {
                    c5 = 30;
                    break;
                }
                break;
            case 3153:
                if (lowerCase.equals("bs")) {
                    c5 = 31;
                    break;
                }
                break;
            case 3154:
                if (lowerCase.equals("bt")) {
                    c5 = ' ';
                    break;
                }
                break;
            case 3156:
                if (lowerCase.equals("bv")) {
                    c5 = '!';
                    break;
                }
                break;
            case 3157:
                if (lowerCase.equals("bw")) {
                    c5 = '\"';
                    break;
                }
                break;
            case 3159:
                if (lowerCase.equals("by")) {
                    c5 = '#';
                    break;
                }
                break;
            case 3160:
                if (lowerCase.equals("bz")) {
                    c5 = '$';
                    break;
                }
                break;
            case 3166:
                if (lowerCase.equals("ca")) {
                    c5 = '%';
                    break;
                }
                break;
            case 3168:
                if (lowerCase.equals("cc")) {
                    c5 = '&';
                    break;
                }
                break;
            case 3169:
                if (lowerCase.equals("cd")) {
                    c5 = '\'';
                    break;
                }
                break;
            case 3171:
                if (lowerCase.equals("cf")) {
                    c5 = '(';
                    break;
                }
                break;
            case 3172:
                if (lowerCase.equals("cg")) {
                    c5 = ')';
                    break;
                }
                break;
            case 3173:
                if (lowerCase.equals("ch")) {
                    c5 = '*';
                    break;
                }
                break;
            case 3174:
                if (lowerCase.equals("ci")) {
                    c5 = '+';
                    break;
                }
                break;
            case 3176:
                if (lowerCase.equals("ck")) {
                    c5 = ',';
                    break;
                }
                break;
            case 3177:
                if (lowerCase.equals("cl")) {
                    c5 = '-';
                    break;
                }
                break;
            case 3178:
                if (lowerCase.equals("cm")) {
                    c5 = '.';
                    break;
                }
                break;
            case 3179:
                if (lowerCase.equals("cn")) {
                    c5 = '/';
                    break;
                }
                break;
            case 3180:
                if (lowerCase.equals("co")) {
                    c5 = '0';
                    break;
                }
                break;
            case 3183:
                if (lowerCase.equals("cr")) {
                    c5 = '1';
                    break;
                }
                break;
            case 3186:
                if (lowerCase.equals("cu")) {
                    c5 = '2';
                    break;
                }
                break;
            case 3187:
                if (lowerCase.equals("cv")) {
                    c5 = '3';
                    break;
                }
                break;
            case 3188:
                if (lowerCase.equals("cw")) {
                    c5 = '4';
                    break;
                }
                break;
            case 3189:
                if (lowerCase.equals("cx")) {
                    c5 = '5';
                    break;
                }
                break;
            case 3190:
                if (lowerCase.equals("cy")) {
                    c5 = '6';
                    break;
                }
                break;
            case 3191:
                if (lowerCase.equals("cz")) {
                    c5 = '7';
                    break;
                }
                break;
            case 3201:
                if (lowerCase.equals("de")) {
                    c5 = '8';
                    break;
                }
                break;
            case 3206:
                if (lowerCase.equals("dj")) {
                    c5 = '9';
                    break;
                }
                break;
            case 3207:
                if (lowerCase.equals("dk")) {
                    c5 = ':';
                    break;
                }
                break;
            case 3209:
                if (lowerCase.equals("dm")) {
                    c5 = ';';
                    break;
                }
                break;
            case 3211:
                if (lowerCase.equals("do")) {
                    c5 = '<';
                    break;
                }
                break;
            case 3222:
                if (lowerCase.equals("dz")) {
                    c5 = '=';
                    break;
                }
                break;
            case 3230:
                if (lowerCase.equals("ec")) {
                    c5 = '>';
                    break;
                }
                break;
            case 3232:
                if (lowerCase.equals("ee")) {
                    c5 = '?';
                    break;
                }
                break;
            case 3234:
                if (lowerCase.equals("eg")) {
                    c5 = '@';
                    break;
                }
                break;
            case 3235:
                if (lowerCase.equals("eh")) {
                    c5 = 'A';
                    break;
                }
                break;
            case 3245:
                if (lowerCase.equals("er")) {
                    c5 = 'B';
                    break;
                }
                break;
            case 3246:
                if (lowerCase.equals("es")) {
                    c5 = 'C';
                    break;
                }
                break;
            case 3247:
                if (lowerCase.equals("et")) {
                    c5 = 'D';
                    break;
                }
                break;
            case 3267:
                if (lowerCase.equals("fi")) {
                    c5 = 'E';
                    break;
                }
                break;
            case 3268:
                if (lowerCase.equals("fj")) {
                    c5 = 'F';
                    break;
                }
                break;
            case 3269:
                if (lowerCase.equals("fk")) {
                    c5 = 'G';
                    break;
                }
                break;
            case 3271:
                if (lowerCase.equals("fm")) {
                    c5 = 'H';
                    break;
                }
                break;
            case 3273:
                if (lowerCase.equals("fo")) {
                    c5 = 'I';
                    break;
                }
                break;
            case 3276:
                if (lowerCase.equals("fr")) {
                    c5 = 'J';
                    break;
                }
                break;
            case 3290:
                if (lowerCase.equals("ga")) {
                    c5 = 'K';
                    break;
                }
                break;
            case 3291:
                if (lowerCase.equals("gb")) {
                    c5 = 'L';
                    break;
                }
                break;
            case 3293:
                if (lowerCase.equals("gd")) {
                    c5 = 'M';
                    break;
                }
                break;
            case 3294:
                if (lowerCase.equals("ge")) {
                    c5 = 'N';
                    break;
                }
                break;
            case 3295:
                if (lowerCase.equals("gf")) {
                    c5 = 'O';
                    break;
                }
                break;
            case 3296:
                if (lowerCase.equals("gg")) {
                    c5 = 'P';
                    break;
                }
                break;
            case 3297:
                if (lowerCase.equals("gh")) {
                    c5 = 'Q';
                    break;
                }
                break;
            case 3298:
                if (lowerCase.equals("gi")) {
                    c5 = 'R';
                    break;
                }
                break;
            case 3301:
                if (lowerCase.equals("gl")) {
                    c5 = 'S';
                    break;
                }
                break;
            case 3302:
                if (lowerCase.equals("gm")) {
                    c5 = 'T';
                    break;
                }
                break;
            case 3303:
                if (lowerCase.equals("gn")) {
                    c5 = 'U';
                    break;
                }
                break;
            case 3305:
                if (lowerCase.equals("gp")) {
                    c5 = 'V';
                    break;
                }
                break;
            case 3306:
                if (lowerCase.equals("gq")) {
                    c5 = 'W';
                    break;
                }
                break;
            case 3307:
                if (lowerCase.equals("gr")) {
                    c5 = 'X';
                    break;
                }
                break;
            case 3308:
                if (lowerCase.equals("gs")) {
                    c5 = 'Y';
                    break;
                }
                break;
            case 3309:
                if (lowerCase.equals("gt")) {
                    c5 = 'Z';
                    break;
                }
                break;
            case 3310:
                if (lowerCase.equals("gu")) {
                    c5 = '[';
                    break;
                }
                break;
            case 3312:
                if (lowerCase.equals("gw")) {
                    c5 = '\\';
                    break;
                }
                break;
            case 3314:
                if (lowerCase.equals("gy")) {
                    c5 = ']';
                    break;
                }
                break;
            case 3331:
                if (lowerCase.equals("hk")) {
                    c5 = '^';
                    break;
                }
                break;
            case 3333:
                if (lowerCase.equals("hm")) {
                    c5 = '_';
                    break;
                }
                break;
            case 3334:
                if (lowerCase.equals("hn")) {
                    c5 = '`';
                    break;
                }
                break;
            case 3338:
                if (lowerCase.equals("hr")) {
                    c5 = 'a';
                    break;
                }
                break;
            case 3340:
                if (lowerCase.equals("ht")) {
                    c5 = 'b';
                    break;
                }
                break;
            case 3341:
                if (lowerCase.equals("hu")) {
                    c5 = 'c';
                    break;
                }
                break;
            case 3355:
                if (lowerCase.equals("id")) {
                    c5 = 'd';
                    break;
                }
                break;
            case 3356:
                if (lowerCase.equals("ie")) {
                    c5 = 'e';
                    break;
                }
                break;
            case 3363:
                if (lowerCase.equals("il")) {
                    c5 = 'f';
                    break;
                }
                break;
            case 3364:
                if (lowerCase.equals("im")) {
                    c5 = 'g';
                    break;
                }
                break;
            case 3365:
                if (lowerCase.equals("in")) {
                    c5 = 'h';
                    break;
                }
                break;
            case 3366:
                if (lowerCase.equals("io")) {
                    c5 = 'i';
                    break;
                }
                break;
            case 3368:
                if (lowerCase.equals("iq")) {
                    c5 = 'j';
                    break;
                }
                break;
            case 3369:
                if (lowerCase.equals("ir")) {
                    c5 = 'k';
                    break;
                }
                break;
            case 3370:
                if (lowerCase.equals("is")) {
                    c5 = 'l';
                    break;
                }
                break;
            case 3371:
                if (lowerCase.equals("it")) {
                    c5 = 'm';
                    break;
                }
                break;
            case 3387:
                if (lowerCase.equals("je")) {
                    c5 = 'n';
                    break;
                }
                break;
            case 3395:
                if (lowerCase.equals("jm")) {
                    c5 = 'o';
                    break;
                }
                break;
            case 3397:
                if (lowerCase.equals("jo")) {
                    c5 = 'p';
                    break;
                }
                break;
            case 3398:
                if (lowerCase.equals("jp")) {
                    c5 = 'q';
                    break;
                }
                break;
            case 3418:
                if (lowerCase.equals("ke")) {
                    c5 = 'r';
                    break;
                }
                break;
            case 3420:
                if (lowerCase.equals("kg")) {
                    c5 = 's';
                    break;
                }
                break;
            case 3421:
                if (lowerCase.equals("kh")) {
                    c5 = 't';
                    break;
                }
                break;
            case 3422:
                if (lowerCase.equals("ki")) {
                    c5 = 'u';
                    break;
                }
                break;
            case 3426:
                if (lowerCase.equals("km")) {
                    c5 = 'v';
                    break;
                }
                break;
            case 3427:
                if (lowerCase.equals("kn")) {
                    c5 = 'w';
                    break;
                }
                break;
            case 3429:
                if (lowerCase.equals("kp")) {
                    c5 = 'x';
                    break;
                }
                break;
            case 3431:
                if (lowerCase.equals("kr")) {
                    c5 = 'y';
                    break;
                }
                break;
            case 3436:
                if (lowerCase.equals("kw")) {
                    c5 = 'z';
                    break;
                }
                break;
            case 3438:
                if (lowerCase.equals("ky")) {
                    c5 = '{';
                    break;
                }
                break;
            case 3439:
                if (lowerCase.equals("kz")) {
                    c5 = '|';
                    break;
                }
                break;
            case 3445:
                if (lowerCase.equals("la")) {
                    c5 = '}';
                    break;
                }
                break;
            case 3446:
                if (lowerCase.equals("lb")) {
                    c5 = '~';
                    break;
                }
                break;
            case 3447:
                if (lowerCase.equals("lc")) {
                    c5 = 127;
                    break;
                }
                break;
            case 3453:
                if (lowerCase.equals("li")) {
                    c5 = 128;
                    break;
                }
                break;
            case 3455:
                if (lowerCase.equals("lk")) {
                    c5 = 129;
                    break;
                }
                break;
            case 3462:
                if (lowerCase.equals("lr")) {
                    c5 = 130;
                    break;
                }
                break;
            case 3463:
                if (lowerCase.equals("ls")) {
                    c5 = 131;
                    break;
                }
                break;
            case 3464:
                if (lowerCase.equals("lt")) {
                    c5 = 132;
                    break;
                }
                break;
            case 3465:
                if (lowerCase.equals("lu")) {
                    c5 = 133;
                    break;
                }
                break;
            case 3466:
                if (lowerCase.equals("lv")) {
                    c5 = 134;
                    break;
                }
                break;
            case 3469:
                if (lowerCase.equals("ly")) {
                    c5 = 135;
                    break;
                }
                break;
            case 3476:
                if (lowerCase.equals("ma")) {
                    c5 = 136;
                    break;
                }
                break;
            case 3478:
                if (lowerCase.equals("mc")) {
                    c5 = 137;
                    break;
                }
                break;
            case 3479:
                if (lowerCase.equals("md")) {
                    c5 = 138;
                    break;
                }
                break;
            case 3480:
                if (lowerCase.equals("me")) {
                    c5 = 139;
                    break;
                }
                break;
            case 3481:
                if (lowerCase.equals("mf")) {
                    c5 = 140;
                    break;
                }
                break;
            case 3482:
                if (lowerCase.equals("mg")) {
                    c5 = 141;
                    break;
                }
                break;
            case 3483:
                if (lowerCase.equals("mh")) {
                    c5 = 142;
                    break;
                }
                break;
            case 3486:
                if (lowerCase.equals("mk")) {
                    c5 = 143;
                    break;
                }
                break;
            case 3487:
                if (lowerCase.equals("ml")) {
                    c5 = 144;
                    break;
                }
                break;
            case 3488:
                if (lowerCase.equals("mm")) {
                    c5 = 145;
                    break;
                }
                break;
            case 3489:
                if (lowerCase.equals("mn")) {
                    c5 = 146;
                    break;
                }
                break;
            case 3490:
                if (lowerCase.equals("mo")) {
                    c5 = 147;
                    break;
                }
                break;
            case 3491:
                if (lowerCase.equals("mp")) {
                    c5 = 148;
                    break;
                }
                break;
            case 3492:
                if (lowerCase.equals("mq")) {
                    c5 = 149;
                    break;
                }
                break;
            case 3493:
                if (lowerCase.equals("mr")) {
                    c5 = 150;
                    break;
                }
                break;
            case 3494:
                if (lowerCase.equals("ms")) {
                    c5 = 151;
                    break;
                }
                break;
            case 3495:
                if (lowerCase.equals("mt")) {
                    c5 = 152;
                    break;
                }
                break;
            case 3496:
                if (lowerCase.equals("mu")) {
                    c5 = 153;
                    break;
                }
                break;
            case 3497:
                if (lowerCase.equals("mv")) {
                    c5 = 154;
                    break;
                }
                break;
            case 3498:
                if (lowerCase.equals("mw")) {
                    c5 = 155;
                    break;
                }
                break;
            case 3499:
                if (lowerCase.equals("mx")) {
                    c5 = 156;
                    break;
                }
                break;
            case 3500:
                if (lowerCase.equals("my")) {
                    c5 = 157;
                    break;
                }
                break;
            case 3501:
                if (lowerCase.equals("mz")) {
                    c5 = 158;
                    break;
                }
                break;
            case 3507:
                if (lowerCase.equals("na")) {
                    c5 = 159;
                    break;
                }
                break;
            case 3509:
                if (lowerCase.equals("nc")) {
                    c5 = 160;
                    break;
                }
                break;
            case 3511:
                if (lowerCase.equals("ne")) {
                    c5 = 161;
                    break;
                }
                break;
            case 3512:
                if (lowerCase.equals("nf")) {
                    c5 = 162;
                    break;
                }
                break;
            case 3513:
                if (lowerCase.equals("ng")) {
                    c5 = 163;
                    break;
                }
                break;
            case 3515:
                if (lowerCase.equals("ni")) {
                    c5 = 164;
                    break;
                }
                break;
            case 3518:
                if (lowerCase.equals("nl")) {
                    c5 = 165;
                    break;
                }
                break;
            case 3521:
                if (lowerCase.equals("no")) {
                    c5 = 166;
                    break;
                }
                break;
            case 3522:
                if (lowerCase.equals("np")) {
                    c5 = 167;
                    break;
                }
                break;
            case 3524:
                if (lowerCase.equals("nr")) {
                    c5 = 168;
                    break;
                }
                break;
            case 3527:
                if (lowerCase.equals("nu")) {
                    c5 = 169;
                    break;
                }
                break;
            case 3532:
                if (lowerCase.equals("nz")) {
                    c5 = 170;
                    break;
                }
                break;
            case 3550:
                if (lowerCase.equals("om")) {
                    c5 = 171;
                    break;
                }
                break;
            case 3569:
                if (lowerCase.equals("pa")) {
                    c5 = 172;
                    break;
                }
                break;
            case 3573:
                if (lowerCase.equals("pe")) {
                    c5 = 173;
                    break;
                }
                break;
            case 3574:
                if (lowerCase.equals("pf")) {
                    c5 = 174;
                    break;
                }
                break;
            case 3575:
                if (lowerCase.equals("pg")) {
                    c5 = 175;
                    break;
                }
                break;
            case 3576:
                if (lowerCase.equals("ph")) {
                    c5 = 176;
                    break;
                }
                break;
            case 3579:
                if (lowerCase.equals("pk")) {
                    c5 = 177;
                    break;
                }
                break;
            case 3580:
                if (lowerCase.equals("pl")) {
                    c5 = 178;
                    break;
                }
                break;
            case 3581:
                if (lowerCase.equals("pm")) {
                    c5 = 179;
                    break;
                }
                break;
            case 3582:
                if (lowerCase.equals("pn")) {
                    c5 = 180;
                    break;
                }
                break;
            case 3586:
                if (lowerCase.equals("pr")) {
                    c5 = 181;
                    break;
                }
                break;
            case 3587:
                if (lowerCase.equals("ps")) {
                    c5 = 182;
                    break;
                }
                break;
            case 3588:
                if (lowerCase.equals("pt")) {
                    c5 = 183;
                    break;
                }
                break;
            case 3591:
                if (lowerCase.equals("pw")) {
                    c5 = 184;
                    break;
                }
                break;
            case 3593:
                if (lowerCase.equals("py")) {
                    c5 = 185;
                    break;
                }
                break;
            case 3600:
                if (lowerCase.equals("qa")) {
                    c5 = 186;
                    break;
                }
                break;
            case 3635:
                if (lowerCase.equals("re")) {
                    c5 = 187;
                    break;
                }
                break;
            case 3645:
                if (lowerCase.equals("ro")) {
                    c5 = 188;
                    break;
                }
                break;
            case 3649:
                if (lowerCase.equals("rs")) {
                    c5 = 189;
                    break;
                }
                break;
            case 3651:
                if (lowerCase.equals("ru")) {
                    c5 = 190;
                    break;
                }
                break;
            case 3653:
                if (lowerCase.equals("rw")) {
                    c5 = 191;
                    break;
                }
                break;
            case 3662:
                if (lowerCase.equals("sa")) {
                    c5 = 192;
                    break;
                }
                break;
            case 3663:
                if (lowerCase.equals("sb")) {
                    c5 = 193;
                    break;
                }
                break;
            case 3664:
                if (lowerCase.equals("sc")) {
                    c5 = 194;
                    break;
                }
                break;
            case 3665:
                if (lowerCase.equals("sd")) {
                    c5 = 195;
                    break;
                }
                break;
            case 3666:
                if (lowerCase.equals("se")) {
                    c5 = 196;
                    break;
                }
                break;
            case 3668:
                if (lowerCase.equals("sg")) {
                    c5 = 197;
                    break;
                }
                break;
            case 3669:
                if (lowerCase.equals("sh")) {
                    c5 = 198;
                    break;
                }
                break;
            case 3670:
                if (lowerCase.equals("si")) {
                    c5 = 199;
                    break;
                }
                break;
            case 3671:
                if (lowerCase.equals("sj")) {
                    c5 = 200;
                    break;
                }
                break;
            case 3672:
                if (lowerCase.equals("sk")) {
                    c5 = 201;
                    break;
                }
                break;
            case 3673:
                if (lowerCase.equals("sl")) {
                    c5 = 202;
                    break;
                }
                break;
            case 3674:
                if (lowerCase.equals("sm")) {
                    c5 = 203;
                    break;
                }
                break;
            case 3675:
                if (lowerCase.equals("sn")) {
                    c5 = 204;
                    break;
                }
                break;
            case 3676:
                if (lowerCase.equals("so")) {
                    c5 = 205;
                    break;
                }
                break;
            case 3679:
                if (lowerCase.equals("sr")) {
                    c5 = 206;
                    break;
                }
                break;
            case 3680:
                if (lowerCase.equals("ss")) {
                    c5 = 207;
                    break;
                }
                break;
            case 3681:
                if (lowerCase.equals("st")) {
                    c5 = 208;
                    break;
                }
                break;
            case 3683:
                if (lowerCase.equals("sv")) {
                    c5 = 209;
                    break;
                }
                break;
            case 3685:
                if (lowerCase.equals("sx")) {
                    c5 = 210;
                    break;
                }
                break;
            case 3686:
                if (lowerCase.equals("sy")) {
                    c5 = 211;
                    break;
                }
                break;
            case 3687:
                if (lowerCase.equals("sz")) {
                    c5 = 212;
                    break;
                }
                break;
            case 3695:
                if (lowerCase.equals("tc")) {
                    c5 = 213;
                    break;
                }
                break;
            case 3696:
                if (lowerCase.equals("td")) {
                    c5 = 214;
                    break;
                }
                break;
            case 3698:
                if (lowerCase.equals("tf")) {
                    c5 = 215;
                    break;
                }
                break;
            case 3699:
                if (lowerCase.equals("tg")) {
                    c5 = 216;
                    break;
                }
                break;
            case 3700:
                if (lowerCase.equals("th")) {
                    c5 = 217;
                    break;
                }
                break;
            case 3702:
                if (lowerCase.equals("tj")) {
                    c5 = 218;
                    break;
                }
                break;
            case 3703:
                if (lowerCase.equals("tk")) {
                    c5 = 219;
                    break;
                }
                break;
            case 3704:
                if (lowerCase.equals("tl")) {
                    c5 = 220;
                    break;
                }
                break;
            case 3705:
                if (lowerCase.equals("tm")) {
                    c5 = 221;
                    break;
                }
                break;
            case 3706:
                if (lowerCase.equals("tn")) {
                    c5 = 222;
                    break;
                }
                break;
            case 3707:
                if (lowerCase.equals("to")) {
                    c5 = 223;
                    break;
                }
                break;
            case 3710:
                if (lowerCase.equals("tr")) {
                    c5 = 224;
                    break;
                }
                break;
            case 3712:
                if (lowerCase.equals("tt")) {
                    c5 = 225;
                    break;
                }
                break;
            case 3714:
                if (lowerCase.equals("tv")) {
                    c5 = 226;
                    break;
                }
                break;
            case 3715:
                if (lowerCase.equals("tw")) {
                    c5 = 227;
                    break;
                }
                break;
            case 3718:
                if (lowerCase.equals("tz")) {
                    c5 = 228;
                    break;
                }
                break;
            case 3724:
                if (lowerCase.equals("ua")) {
                    c5 = 229;
                    break;
                }
                break;
            case 3730:
                if (lowerCase.equals("ug")) {
                    c5 = 230;
                    break;
                }
                break;
            case 3736:
                if (lowerCase.equals("um")) {
                    c5 = 231;
                    break;
                }
                break;
            case 3742:
                if (lowerCase.equals("us")) {
                    c5 = 232;
                    break;
                }
                break;
            case 3748:
                if (lowerCase.equals("uy")) {
                    c5 = 233;
                    break;
                }
                break;
            case 3749:
                if (lowerCase.equals("uz")) {
                    c5 = 234;
                    break;
                }
                break;
            case 3755:
                if (lowerCase.equals("va")) {
                    c5 = 235;
                    break;
                }
                break;
            case 3757:
                if (lowerCase.equals("vc")) {
                    c5 = 236;
                    break;
                }
                break;
            case 3759:
                if (lowerCase.equals("ve")) {
                    c5 = 237;
                    break;
                }
                break;
            case 3761:
                if (lowerCase.equals("vg")) {
                    c5 = 238;
                    break;
                }
                break;
            case 3763:
                if (lowerCase.equals("vi")) {
                    c5 = 239;
                    break;
                }
                break;
            case 3768:
                if (lowerCase.equals("vn")) {
                    c5 = 240;
                    break;
                }
                break;
            case 3775:
                if (lowerCase.equals("vu")) {
                    c5 = 241;
                    break;
                }
                break;
            case 3791:
                if (lowerCase.equals("wf")) {
                    c5 = 242;
                    break;
                }
                break;
            case 3804:
                if (lowerCase.equals("ws")) {
                    c5 = 243;
                    break;
                }
                break;
            case 3827:
                if (lowerCase.equals("xk")) {
                    c5 = 244;
                    break;
                }
                break;
            case 3852:
                if (lowerCase.equals("ye")) {
                    c5 = 245;
                    break;
                }
                break;
            case 3867:
                if (lowerCase.equals("yt")) {
                    c5 = 246;
                    break;
                }
                break;
            case 3879:
                if (lowerCase.equals("za")) {
                    c5 = 247;
                    break;
                }
                break;
            case 3891:
                if (lowerCase.equals("zm")) {
                    c5 = 248;
                    break;
                }
                break;
            case 3901:
                if (lowerCase.equals("zw")) {
                    c5 = 249;
                    break;
                }
                break;
        }
        switch (c5) {
            case 0:
                return "🇦🇩";
            case 1:
                return "🇦🇪";
            case 2:
                return "🇦🇫";
            case 3:
                return "🇦🇬";
            case 4:
                return "🇦🇮";
            case 5:
                return "🇦🇱";
            case 6:
                return "🇦🇲";
            case 7:
                return "🇦🇴";
            case '\b':
                return "🇦🇶";
            case '\t':
                return "🇦🇷";
            case '\n':
                return "🇦🇸";
            case 11:
                return "🇦🇹";
            case '\f':
                return "🇦🇺";
            case '\r':
                return "🇦🇼";
            case 14:
                return "🇦🇽";
            case 15:
                return "🇦🇿";
            case 16:
                return "🇧🇦";
            case 17:
                return "🇧🇧";
            case 18:
                return "🇧🇩";
            case 19:
                return "🇧🇪";
            case 20:
                return "🇧🇫";
            case 21:
                return "🇧🇬";
            case 22:
                return "🇧🇭";
            case ConnectionResult.API_DISABLED /* 23 */:
                return "🇧🇮";
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return "🇧🇯";
            case FirestoreIndexValueWriter.INDEX_TYPE_STRING /* 25 */:
                return "🇧🇱";
            case 26:
                return "🇧🇲";
            case 27:
                return "🇧🇳";
            case 28:
                return "🇧🇴";
            case 29:
                return "🇧🇶";
            case FirestoreIndexValueWriter.INDEX_TYPE_BLOB /* 30 */:
                return "🇧🇷";
            case 31:
                return "🇧🇸";
            case ' ':
                return "🇧🇹";
            case '!':
                return "🇧🇻";
            case '\"':
                return "🇧🇼";
            case '#':
                return "🇧🇾";
            case '$':
                return "🇧🇿";
            case FirestoreIndexValueWriter.INDEX_TYPE_REFERENCE /* 37 */:
                return "🇨🇦";
            case '&':
                return "🇨🇨";
            case '\'':
                return "🇨🇩";
            case '(':
                return "🇨🇫";
            case ')':
                return "🇨🇬";
            case '*':
                return "🇨🇭";
            case '+':
                return "🇨🇮";
            case ',':
                return "🇨🇰";
            case FirestoreIndexValueWriter.INDEX_TYPE_GEOPOINT /* 45 */:
                return "🇨🇱";
            case '.':
                return "🇨🇲";
            case '/':
                return "🇨🇳";
            case '0':
                return "🇨🇴";
            case '1':
                return "🇨🇷";
            case FirestoreIndexValueWriter.INDEX_TYPE_ARRAY /* 50 */:
                return "🇨🇺";
            case '3':
                return "🇨🇻";
            case '4':
                return "🇨🇼";
            case '5':
                return "🇨🇽";
            case '6':
                return "🇨🇾";
            case FirestoreIndexValueWriter.INDEX_TYPE_MAP /* 55 */:
                return "🇨🇿";
            case '8':
                return "🇩🇪";
            case '9':
                return "🇩🇯";
            case ':':
                return "🇩🇰";
            case ';':
                return "🇩🇲";
            case FirestoreIndexValueWriter.INDEX_TYPE_REFERENCE_SEGMENT /* 60 */:
                return "🇩🇴";
            case '=':
                return "🇩🇿";
            case '>':
                return "🇪🇨";
            case '?':
                return "🇪🇪";
            case UserVerificationMethods.USER_VERIFY_EYEPRINT /* 64 */:
                return "🇪🇬";
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                return "🇪🇭";
            case 'B':
                return "🇪🇷";
            case 'C':
                return "🇪🇸";
            case 'D':
                return "🇪🇹";
            case 'E':
                return "🇫🇮";
            case 'F':
                return "🇫🇯";
            case 'G':
                return "🇫🇰";
            case 'H':
                return "🇫🇲";
            case 'I':
                return "🇫🇴";
            case 'J':
                return "🇫🇷";
            case 'K':
                return "🇬🇦";
            case 'L':
                return "🇬🇧";
            case 'M':
                return "🇬🇩";
            case 'N':
                return "🇬🇪";
            case 'O':
                return "🇬🇫";
            case 'P':
                return "🇬🇬";
            case 'Q':
                return "🇬🇭";
            case 'R':
                return "🇬🇮";
            case 'S':
                return "🇬🇱";
            case 'T':
                return "🇬🇲";
            case 'U':
                return "🇬🇳";
            case 'V':
                return "🇬🇵";
            case 'W':
                return "🇬🇶";
            case 'X':
                return "🇬🇷";
            case ModuleDescriptor.MODULE_VERSION /* 89 */:
                return "🇬🇸";
            case 'Z':
                return "🇬🇹";
            case '[':
                return "🇬🇺";
            case '\\':
                return "🇬🇼";
            case ']':
                return "🇬🇾";
            case '^':
                return "🇭🇰";
            case '_':
                return "🇭🇲";
            case '`':
                return "🇭🇳";
            case 'a':
                return "🇭🇷";
            case 'b':
                return "🇭🇹";
            case 'c':
                return "🇭🇺";
            case LocationRequest.PRIORITY_HIGH_ACCURACY /* 100 */:
                return "🇮🇩";
            case 'e':
                return "🇮🇪";
            case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /* 102 */:
                return "🇮🇱";
            case 'g':
                return "🇮🇲";
            case LocationRequest.PRIORITY_LOW_POWER /* 104 */:
                return "🇮🇳";
            case LocationRequest.PRIORITY_NO_POWER /* 105 */:
                return "🇮🇴";
            case 'j':
                return "🇮🇶";
            case 'k':
                return "🇮🇷";
            case 'l':
                return "🇮🇸";
            case 'm':
                return "🇮🇹";
            case 'n':
                return "🇯🇪";
            case 'o':
                return "🇯🇲";
            case 'p':
                return "🇯🇴";
            case 'q':
                return "🇯🇵";
            case 'r':
                return "🇰🇪";
            case 's':
                return "🇰🇬";
            case 't':
                return "🇰🇭";
            case 'u':
                return "🇰🇮";
            case 'v':
                return "🇰🇲";
            case 'w':
                return "🇰🇳";
            case 'x':
                return "🇰🇵";
            case 'y':
                return "🇰🇷";
            case 'z':
                return "🇰🇼";
            case '{':
                return "🇰🇾";
            case '|':
                return "🇰🇿";
            case '}':
                return "🇱🇦";
            case '~':
                return "🇱🇧";
            case 127:
                return "🇱🇨";
            case UserVerificationMethods.USER_VERIFY_PATTERN /* 128 */:
                return "🇱🇮";
            case 129:
                return "🇱🇰";
            case 130:
                return "🇱🇷";
            case 131:
                return "🇱🇸";
            case 132:
                return "🇱🇹";
            case 133:
                return "🇱🇺";
            case 134:
                return "🇱🇻";
            case 135:
                return "🇱🇾";
            case 136:
                return "🇲🇦";
            case 137:
                return "🇲🇨";
            case 138:
                return "🇲🇩";
            case 139:
                return "🇲🇪";
            case 140:
                return "🇲🇫";
            case 141:
                return "🇲🇬";
            case 142:
                return "🇲🇭";
            case 143:
                return "🇲🇰";
            case 144:
                return "🇲🇱";
            case 145:
                return "🇲🇲";
            case 146:
                return "🇲🇳";
            case 147:
                return "🇲🇴";
            case 148:
                return "🇲🇵";
            case 149:
                return "🇲🇶";
            case 150:
                return "🇲🇷";
            case 151:
                return "🇲🇸";
            case 152:
                return "🇲🇹";
            case 153:
                return "🇲🇺";
            case 154:
                return "🇲🇻";
            case 155:
                return "🇲🇼";
            case 156:
                return "🇲🇽";
            case 157:
                return "🇲🇾";
            case 158:
                return "🇲🇿";
            case 159:
                return "🇳🇦";
            case 160:
                return "🇳🇨";
            case 161:
                return "🇳🇪";
            case 162:
                return "🇳🇫";
            case 163:
                return "🇳🇬";
            case 164:
                return "🇳🇮";
            case 165:
                return "🇳🇱";
            case 166:
                return "🇳🇴";
            case 167:
                return "🇳🇵";
            case 168:
                return "🇳🇷";
            case 169:
                return "🇳🇺";
            case 170:
                return "🇳🇿";
            case 171:
                return "🇴🇲";
            case 172:
                return "🇵🇦";
            case 173:
                return "🇵🇪";
            case 174:
                return "🇵🇫";
            case 175:
                return "🇵🇬";
            case 176:
                return "🇵🇭";
            case 177:
                return "🇵🇰";
            case 178:
                return "🇵🇱";
            case 179:
                return "🇵🇲";
            case 180:
                return "🇵🇳";
            case 181:
                return "🇵🇷";
            case 182:
                return "🇵🇸";
            case 183:
                return "🇵🇹";
            case 184:
                return "🇵🇼";
            case 185:
                return "🇵🇾";
            case 186:
                return "🇶🇦";
            case 187:
                return "🇷🇪";
            case 188:
                return "🇷🇴";
            case 189:
                return "🇷🇸";
            case 190:
                return "🇷🇺";
            case 191:
                return "🇷🇼";
            case 192:
                return "🇸🇦";
            case 193:
                return "🇸🇧";
            case 194:
                return "🇸🇨";
            case 195:
                return "🇸🇩";
            case 196:
                return "🇸🇪";
            case 197:
                return "🇸🇬";
            case 198:
                return "🇸🇭";
            case 199:
                return "🇸🇮";
            case 200:
                return "🇸🇯";
            case 201:
                return "🇸🇰";
            case 202:
                return "🇸🇱";
            case 203:
                return "🇸🇲";
            case 204:
                return "🇸🇳";
            case 205:
                return "🇸🇴";
            case 206:
                return "🇸🇷";
            case 207:
                return "🇸🇸";
            case 208:
                return "🇸🇹";
            case 209:
                return "🇸🇻";
            case 210:
                return "🇸🇽";
            case 211:
                return "🇸🇾";
            case 212:
                return "🇸🇿";
            case 213:
                return "🇹🇨";
            case 214:
                return "🇹🇩";
            case 215:
                return "🇹🇫";
            case 216:
                return "🇹🇬";
            case 217:
                return "🇹🇭";
            case 218:
                return "🇹🇯";
            case 219:
                return "🇹🇰";
            case 220:
                return "🇹🇱";
            case 221:
                return "🇹🇲";
            case 222:
                return "🇹🇳";
            case 223:
                return "🇹🇴";
            case 224:
                return "🇹🇷";
            case 225:
                return "🇹🇹";
            case 226:
                return "🇹🇻";
            case 227:
                return "🇹🇼";
            case 228:
                return "🇹🇿";
            case 229:
                return "🇺🇦";
            case 230:
                return "🇺🇬";
            case 231:
                return "🇺🇲";
            case 232:
                return "🇺🇸";
            case 233:
                return "🇺🇾";
            case 234:
                return "🇺🇿";
            case 235:
                return "🇻🇦";
            case 236:
                return "🇻🇨";
            case 237:
                return "🇻🇪";
            case 238:
                return "🇻🇬";
            case 239:
                return "🇻🇮";
            case 240:
                return "🇻🇳";
            case 241:
                return "🇻🇺";
            case 242:
                return "🇼🇫";
            case 243:
                return "🇼🇸";
            case 244:
                return "🇽🇰";
            case 245:
                return "🇾🇪";
            case 246:
                return "🇾🇹";
            case 247:
                return "🇿🇦";
            case 248:
                return "🇿🇲";
            case 249:
                return "🇿🇼";
            default:
                return " ";
        }
    }

    public static ArrayList i() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0304a("ad", "376", "Andorra"));
        arrayList.add(new C0304a("ae", "971", "United Arab Emirates (UAE)"));
        arrayList.add(new C0304a("af", "93", "Afghanistan"));
        arrayList.add(new C0304a("ag", "1", "Antigua and Barbuda"));
        arrayList.add(new C0304a("ai", "1", "Anguilla"));
        arrayList.add(new C0304a("al", "355", "Albania"));
        arrayList.add(new C0304a("am", "374", "Armenia"));
        arrayList.add(new C0304a("ao", "244", "Angola"));
        arrayList.add(new C0304a("aq", "672", "Antarctica"));
        arrayList.add(new C0304a("ar", "54", "Argentina"));
        arrayList.add(new C0304a("as", "1", "American Samoa"));
        arrayList.add(new C0304a("at", "43", "Austria"));
        arrayList.add(new C0304a("au", "61", "Australia"));
        arrayList.add(new C0304a("aw", "297", "Aruba"));
        arrayList.add(new C0304a("ax", "358", "Åland Islands"));
        arrayList.add(new C0304a("az", "994", "Azerbaijan"));
        arrayList.add(new C0304a("ba", "387", "Bosnia And Herzegovina"));
        arrayList.add(new C0304a("bb", "1", "Barbados"));
        arrayList.add(new C0304a("bd", "880", "Bangladesh"));
        arrayList.add(new C0304a("be", "32", "Belgium"));
        arrayList.add(new C0304a("bf", "226", "Burkina Faso"));
        arrayList.add(new C0304a("bg", "359", "Bulgaria"));
        arrayList.add(new C0304a("bh", "973", "Bahrain"));
        arrayList.add(new C0304a("bi", "257", "Burundi"));
        arrayList.add(new C0304a("bj", "229", "Benin"));
        arrayList.add(new C0304a("bl", "590", "Saint Barthélemy"));
        arrayList.add(new C0304a("bm", "1", "Bermuda"));
        arrayList.add(new C0304a("bn", "673", "Brunei Darussalam"));
        arrayList.add(new C0304a("bo", "591", "Bolivia, Plurinational State Of"));
        arrayList.add(new C0304a("br", "55", "Brazil"));
        arrayList.add(new C0304a("bs", "1", "Bahamas"));
        arrayList.add(new C0304a("bt", "975", "Bhutan"));
        arrayList.add(new C0304a("bw", "267", "Botswana"));
        arrayList.add(new C0304a("by", "375", "Belarus"));
        arrayList.add(new C0304a("bz", "501", "Belize"));
        arrayList.add(new C0304a("ca", "1", "Canada"));
        arrayList.add(new C0304a("cc", "61", "Cocos (keeling) Islands"));
        arrayList.add(new C0304a("cd", "243", "Congo, The Democratic Republic Of The"));
        arrayList.add(new C0304a("cf", "236", "Central African Republic"));
        arrayList.add(new C0304a("cg", "242", "Congo"));
        arrayList.add(new C0304a("ch", "41", "Switzerland"));
        arrayList.add(new C0304a("ci", "225", "Côte D'ivoire"));
        arrayList.add(new C0304a("ck", "682", "Cook Islands"));
        arrayList.add(new C0304a("cl", "56", "Chile"));
        arrayList.add(new C0304a("cm", "237", "Cameroon"));
        arrayList.add(new C0304a("cn", "86", "China"));
        arrayList.add(new C0304a("co", "57", "Colombia"));
        arrayList.add(new C0304a("cr", "506", "Costa Rica"));
        arrayList.add(new C0304a("cu", "53", "Cuba"));
        arrayList.add(new C0304a("cv", "238", "Cape Verde"));
        arrayList.add(new C0304a("cw", "599", "Curaçao"));
        arrayList.add(new C0304a("cx", "61", "Christmas Island"));
        arrayList.add(new C0304a("cy", "357", "Cyprus"));
        arrayList.add(new C0304a("cz", "420", "Czech Republic"));
        arrayList.add(new C0304a("de", "49", "Germany"));
        arrayList.add(new C0304a("dj", "253", "Djibouti"));
        arrayList.add(new C0304a("dk", "45", "Denmark"));
        arrayList.add(new C0304a("dm", "1", "Dominica"));
        arrayList.add(new C0304a("do", "1", "Dominican Republic"));
        arrayList.add(new C0304a("dz", "213", "Algeria"));
        arrayList.add(new C0304a("ec", "593", "Ecuador"));
        arrayList.add(new C0304a("ee", "372", "Estonia"));
        arrayList.add(new C0304a("eg", "20", "Egypt"));
        arrayList.add(new C0304a("er", "291", "Eritrea"));
        arrayList.add(new C0304a("es", "34", "Spain"));
        arrayList.add(new C0304a("et", "251", "Ethiopia"));
        arrayList.add(new C0304a("fi", "358", "Finland"));
        arrayList.add(new C0304a("fj", "679", "Fiji"));
        arrayList.add(new C0304a("fk", "500", "Falkland Islands (malvinas)"));
        arrayList.add(new C0304a("fm", "691", "Micronesia, Federated States Of"));
        arrayList.add(new C0304a("fo", "298", "Faroe Islands"));
        arrayList.add(new C0304a("fr", "33", "France"));
        arrayList.add(new C0304a("ga", "241", "Gabon"));
        arrayList.add(new C0304a("gb", "44", "United Kingdom"));
        arrayList.add(new C0304a("gd", "1", "Grenada"));
        arrayList.add(new C0304a("ge", "995", "Georgia"));
        arrayList.add(new C0304a("gf", "594", "French Guyana"));
        arrayList.add(new C0304a("gh", "233", "Ghana"));
        arrayList.add(new C0304a("gi", "350", "Gibraltar"));
        arrayList.add(new C0304a("gl", "299", "Greenland"));
        arrayList.add(new C0304a("gm", "220", "Gambia"));
        arrayList.add(new C0304a("gn", "224", "Guinea"));
        arrayList.add(new C0304a("gp", "450", "Guadeloupe"));
        arrayList.add(new C0304a("gq", "240", "Equatorial Guinea"));
        arrayList.add(new C0304a("gr", "30", "Greece"));
        arrayList.add(new C0304a("gt", "502", "Guatemala"));
        arrayList.add(new C0304a("gu", "1", "Guam"));
        arrayList.add(new C0304a("gw", "245", "Guinea-bissau"));
        arrayList.add(new C0304a("gy", "592", "Guyana"));
        arrayList.add(new C0304a("hk", "852", "Hong Kong"));
        arrayList.add(new C0304a("hn", "504", "Honduras"));
        arrayList.add(new C0304a("hr", "385", "Croatia"));
        arrayList.add(new C0304a("ht", "509", "Haiti"));
        arrayList.add(new C0304a("hu", "36", "Hungary"));
        arrayList.add(new C0304a("id", "62", "Indonesia"));
        arrayList.add(new C0304a("ie", "353", "Ireland"));
        arrayList.add(new C0304a("il", "972", "Israel"));
        arrayList.add(new C0304a("im", "44", "Isle Of Man"));
        arrayList.add(new C0304a("is", "354", "Iceland"));
        arrayList.add(new C0304a("in", "91", "India"));
        arrayList.add(new C0304a("io", "246", "British Indian Ocean Territory"));
        arrayList.add(new C0304a("iq", "964", "Iraq"));
        arrayList.add(new C0304a("ir", "98", "Iran, Islamic Republic Of"));
        arrayList.add(new C0304a("it", "39", "Italy"));
        arrayList.add(new C0304a("je", "44", "Jersey "));
        arrayList.add(new C0304a("jm", "1", "Jamaica"));
        arrayList.add(new C0304a("jo", "962", "Jordan"));
        arrayList.add(new C0304a("jp", "81", "Japan"));
        arrayList.add(new C0304a("ke", "254", "Kenya"));
        arrayList.add(new C0304a("kg", "996", "Kyrgyzstan"));
        arrayList.add(new C0304a("kh", "855", "Cambodia"));
        arrayList.add(new C0304a("ki", "686", "Kiribati"));
        arrayList.add(new C0304a("km", "269", "Comoros"));
        arrayList.add(new C0304a("kn", "1", "Saint Kitts and Nevis"));
        arrayList.add(new C0304a("kp", "850", "North Korea"));
        arrayList.add(new C0304a("kr", "82", "South Korea"));
        arrayList.add(new C0304a("kw", "965", "Kuwait"));
        arrayList.add(new C0304a("ky", "1", "Cayman Islands"));
        arrayList.add(new C0304a("kz", "7", "Kazakhstan"));
        arrayList.add(new C0304a("la", "856", "Lao People's Democratic Republic"));
        arrayList.add(new C0304a("lb", "961", "Lebanon"));
        arrayList.add(new C0304a("lc", "1", "Saint Lucia"));
        arrayList.add(new C0304a("li", "423", "Liechtenstein"));
        arrayList.add(new C0304a("lk", "94", "Sri Lanka"));
        arrayList.add(new C0304a("lr", "231", "Liberia"));
        arrayList.add(new C0304a("ls", "266", "Lesotho"));
        arrayList.add(new C0304a("lt", "370", "Lithuania"));
        arrayList.add(new C0304a("lu", "352", "Luxembourg"));
        arrayList.add(new C0304a("lv", "371", "Latvia"));
        arrayList.add(new C0304a("ly", "218", "Libya"));
        arrayList.add(new C0304a("ma", "212", "Morocco"));
        arrayList.add(new C0304a("mc", "377", "Monaco"));
        arrayList.add(new C0304a("md", "373", "Moldova, Republic Of"));
        arrayList.add(new C0304a("me", "382", "Montenegro"));
        arrayList.add(new C0304a("mf", "590", "Saint Martin"));
        arrayList.add(new C0304a("mg", "261", "Madagascar"));
        arrayList.add(new C0304a("mh", "692", "Marshall Islands"));
        arrayList.add(new C0304a("mk", "389", "Macedonia (FYROM)"));
        arrayList.add(new C0304a("ml", "223", "Mali"));
        arrayList.add(new C0304a("mm", "95", "Myanmar"));
        arrayList.add(new C0304a("mn", "976", "Mongolia"));
        arrayList.add(new C0304a("mo", "853", "Macau"));
        arrayList.add(new C0304a("mp", "1", "Northern Mariana Islands"));
        arrayList.add(new C0304a("mq", "596", "Martinique"));
        arrayList.add(new C0304a("mr", "222", "Mauritania"));
        arrayList.add(new C0304a("ms", "1", "Montserrat"));
        arrayList.add(new C0304a("mt", "356", "Malta"));
        arrayList.add(new C0304a("mu", "230", "Mauritius"));
        arrayList.add(new C0304a("mv", "960", "Maldives"));
        arrayList.add(new C0304a("mw", "265", "Malawi"));
        arrayList.add(new C0304a("mx", "52", "Mexico"));
        arrayList.add(new C0304a("my", "60", "Malaysia"));
        arrayList.add(new C0304a("mz", "258", "Mozambique"));
        arrayList.add(new C0304a("na", "264", "Namibia"));
        arrayList.add(new C0304a("nc", "687", "New Caledonia"));
        arrayList.add(new C0304a("ne", "227", "Niger"));
        arrayList.add(new C0304a("nf", "672", "Norfolk Islands"));
        arrayList.add(new C0304a("ng", "234", "Nigeria"));
        arrayList.add(new C0304a("ni", "505", "Nicaragua"));
        arrayList.add(new C0304a("nl", "31", "Netherlands"));
        arrayList.add(new C0304a("no", "47", "Norway"));
        arrayList.add(new C0304a("np", "977", "Nepal"));
        arrayList.add(new C0304a("nr", "674", "Nauru"));
        arrayList.add(new C0304a("nu", "683", "Niue"));
        arrayList.add(new C0304a("nz", "64", "New Zealand"));
        arrayList.add(new C0304a("om", "968", "Oman"));
        arrayList.add(new C0304a("pa", "507", "Panama"));
        arrayList.add(new C0304a("pe", "51", "Peru"));
        arrayList.add(new C0304a("pf", "689", "French Polynesia"));
        arrayList.add(new C0304a("pg", "675", "Papua New Guinea"));
        arrayList.add(new C0304a("ph", "63", "Philippines"));
        arrayList.add(new C0304a("pk", "92", "Pakistan"));
        arrayList.add(new C0304a("pl", "48", "Poland"));
        arrayList.add(new C0304a("pm", "508", "Saint Pierre And Miquelon"));
        arrayList.add(new C0304a("pn", "870", "Pitcairn Islands"));
        arrayList.add(new C0304a("pr", "1", "Puerto Rico"));
        arrayList.add(new C0304a("ps", "970", "Palestine"));
        arrayList.add(new C0304a("pt", "351", "Portugal"));
        arrayList.add(new C0304a("pw", "680", "Palau"));
        arrayList.add(new C0304a("py", "595", "Paraguay"));
        arrayList.add(new C0304a("qa", "974", "Qatar"));
        arrayList.add(new C0304a("re", "262", "Réunion"));
        arrayList.add(new C0304a("ro", "40", "Romania"));
        arrayList.add(new C0304a("rs", "381", "Serbia"));
        arrayList.add(new C0304a("ru", "7", "Russian Federation"));
        arrayList.add(new C0304a("rw", "250", "Rwanda"));
        arrayList.add(new C0304a("sa", "966", "Saudi Arabia"));
        arrayList.add(new C0304a("sb", "677", "Solomon Islands"));
        arrayList.add(new C0304a("sc", "248", "Seychelles"));
        arrayList.add(new C0304a("sd", "249", "Sudan"));
        arrayList.add(new C0304a("se", "46", "Sweden"));
        arrayList.add(new C0304a("sg", "65", "Singapore"));
        arrayList.add(new C0304a("sh", "290", "Saint Helena, Ascension And Tristan Da Cunha"));
        arrayList.add(new C0304a("si", "386", "Slovenia"));
        arrayList.add(new C0304a("sk", "421", "Slovakia"));
        arrayList.add(new C0304a("sl", "232", "Sierra Leone"));
        arrayList.add(new C0304a("sm", "378", "San Marino"));
        arrayList.add(new C0304a("sn", "221", "Senegal"));
        arrayList.add(new C0304a("so", "252", "Somalia"));
        arrayList.add(new C0304a("sr", "597", "Suriname"));
        arrayList.add(new C0304a("ss", "211", "South Sudan"));
        arrayList.add(new C0304a("st", "239", "Sao Tome And Principe"));
        arrayList.add(new C0304a("sv", "503", "El Salvador"));
        arrayList.add(new C0304a("sx", "1", "Sint Maarten"));
        arrayList.add(new C0304a("sy", "963", "Syrian Arab Republic"));
        arrayList.add(new C0304a("sz", "268", "Swaziland"));
        arrayList.add(new C0304a("tc", "1", "Turks and Caicos Islands"));
        arrayList.add(new C0304a("td", "235", "Chad"));
        arrayList.add(new C0304a("tg", "228", "Togo"));
        arrayList.add(new C0304a("th", "66", "Thailand"));
        arrayList.add(new C0304a("tj", "992", "Tajikistan"));
        arrayList.add(new C0304a("tk", "690", "Tokelau"));
        arrayList.add(new C0304a("tl", "670", "Timor-leste"));
        arrayList.add(new C0304a("tm", "993", "Turkmenistan"));
        arrayList.add(new C0304a("tn", "216", "Tunisia"));
        arrayList.add(new C0304a("to", "676", "Tonga"));
        arrayList.add(new C0304a("tr", "90", "Turkey"));
        arrayList.add(new C0304a("tt", "1", "Trinidad &amp; Tobago"));
        arrayList.add(new C0304a("tv", "688", "Tuvalu"));
        arrayList.add(new C0304a("tw", "886", "Taiwan"));
        arrayList.add(new C0304a("tz", "255", "Tanzania, United Republic Of"));
        arrayList.add(new C0304a("ua", "380", "Ukraine"));
        arrayList.add(new C0304a("ug", "256", "Uganda"));
        arrayList.add(new C0304a("us", "1", "United States"));
        arrayList.add(new C0304a("uy", "598", "Uruguay"));
        arrayList.add(new C0304a("uz", "998", "Uzbekistan"));
        arrayList.add(new C0304a("va", "379", "Holy See (vatican City State)"));
        arrayList.add(new C0304a("vc", "1", "Saint Vincent &amp; The Grenadines"));
        arrayList.add(new C0304a("ve", "58", "Venezuela, Bolivarian Republic Of"));
        arrayList.add(new C0304a("vg", "1", "British Virgin Islands"));
        arrayList.add(new C0304a("vi", "1", "US Virgin Islands"));
        arrayList.add(new C0304a("vn", "84", "Vietnam"));
        arrayList.add(new C0304a("vu", "678", "Vanuatu"));
        arrayList.add(new C0304a("wf", "681", "Wallis And Futuna"));
        arrayList.add(new C0304a("ws", "685", "Samoa"));
        arrayList.add(new C0304a("xk", "383", "Kosovo"));
        arrayList.add(new C0304a("ye", "967", "Yemen"));
        arrayList.add(new C0304a("yt", "262", "Mayotte"));
        arrayList.add(new C0304a("za", "27", "South Africa"));
        arrayList.add(new C0304a("zm", "260", "Zambia"));
        arrayList.add(new C0304a("zw", "263", "Zimbabwe"));
        return arrayList;
    }

    public static ArrayList j(Context context, o oVar) {
        ArrayList arrayList;
        o oVar2 = f4861f;
        if (oVar2 == null || oVar != oVar2 || (arrayList = o) == null || arrayList.size() == 0) {
            l(context, oVar);
        }
        return o;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010e  */
    /* JADX WARN: Type inference failed for: r8v32, types: [java.lang.Object, c3.a] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void l(android.content.Context r8, c3.o r9) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.C0304a.l(android.content.Context, c3.o):void");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Collator.getInstance().compare(this.f4867c, ((C0304a) obj).f4867c);
    }

    public final int h() {
        if (this.f4869e == -99) {
            String lowerCase = this.f4865a.toLowerCase();
            lowerCase.getClass();
            int i = R.drawable.flag_martinique;
            char c5 = 65535;
            switch (lowerCase.hashCode()) {
                case 3107:
                    if (lowerCase.equals("ad")) {
                        c5 = 0;
                        break;
                    }
                    break;
                case 3108:
                    if (lowerCase.equals("ae")) {
                        c5 = 1;
                        break;
                    }
                    break;
                case 3109:
                    if (lowerCase.equals("af")) {
                        c5 = 2;
                        break;
                    }
                    break;
                case 3110:
                    if (lowerCase.equals("ag")) {
                        c5 = 3;
                        break;
                    }
                    break;
                case 3112:
                    if (lowerCase.equals("ai")) {
                        c5 = 4;
                        break;
                    }
                    break;
                case 3115:
                    if (lowerCase.equals("al")) {
                        c5 = 5;
                        break;
                    }
                    break;
                case 3116:
                    if (lowerCase.equals("am")) {
                        c5 = 6;
                        break;
                    }
                    break;
                case 3118:
                    if (lowerCase.equals("ao")) {
                        c5 = 7;
                        break;
                    }
                    break;
                case 3120:
                    if (lowerCase.equals("aq")) {
                        c5 = '\b';
                        break;
                    }
                    break;
                case 3121:
                    if (lowerCase.equals("ar")) {
                        c5 = '\t';
                        break;
                    }
                    break;
                case 3122:
                    if (lowerCase.equals("as")) {
                        c5 = '\n';
                        break;
                    }
                    break;
                case 3123:
                    if (lowerCase.equals("at")) {
                        c5 = 11;
                        break;
                    }
                    break;
                case 3124:
                    if (lowerCase.equals("au")) {
                        c5 = '\f';
                        break;
                    }
                    break;
                case 3126:
                    if (lowerCase.equals("aw")) {
                        c5 = '\r';
                        break;
                    }
                    break;
                case 3127:
                    if (lowerCase.equals("ax")) {
                        c5 = 14;
                        break;
                    }
                    break;
                case 3129:
                    if (lowerCase.equals("az")) {
                        c5 = 15;
                        break;
                    }
                    break;
                case 3135:
                    if (lowerCase.equals("ba")) {
                        c5 = 16;
                        break;
                    }
                    break;
                case 3136:
                    if (lowerCase.equals("bb")) {
                        c5 = 17;
                        break;
                    }
                    break;
                case 3138:
                    if (lowerCase.equals("bd")) {
                        c5 = 18;
                        break;
                    }
                    break;
                case 3139:
                    if (lowerCase.equals("be")) {
                        c5 = 19;
                        break;
                    }
                    break;
                case 3140:
                    if (lowerCase.equals("bf")) {
                        c5 = 20;
                        break;
                    }
                    break;
                case 3141:
                    if (lowerCase.equals("bg")) {
                        c5 = 21;
                        break;
                    }
                    break;
                case 3142:
                    if (lowerCase.equals("bh")) {
                        c5 = 22;
                        break;
                    }
                    break;
                case 3143:
                    if (lowerCase.equals("bi")) {
                        c5 = 23;
                        break;
                    }
                    break;
                case 3144:
                    if (lowerCase.equals("bj")) {
                        c5 = 24;
                        break;
                    }
                    break;
                case 3146:
                    if (lowerCase.equals("bl")) {
                        c5 = 25;
                        break;
                    }
                    break;
                case 3147:
                    if (lowerCase.equals("bm")) {
                        c5 = 26;
                        break;
                    }
                    break;
                case 3148:
                    if (lowerCase.equals("bn")) {
                        c5 = 27;
                        break;
                    }
                    break;
                case 3149:
                    if (lowerCase.equals("bo")) {
                        c5 = 28;
                        break;
                    }
                    break;
                case 3152:
                    if (lowerCase.equals("br")) {
                        c5 = 29;
                        break;
                    }
                    break;
                case 3153:
                    if (lowerCase.equals("bs")) {
                        c5 = 30;
                        break;
                    }
                    break;
                case 3154:
                    if (lowerCase.equals("bt")) {
                        c5 = 31;
                        break;
                    }
                    break;
                case 3157:
                    if (lowerCase.equals("bw")) {
                        c5 = ' ';
                        break;
                    }
                    break;
                case 3159:
                    if (lowerCase.equals("by")) {
                        c5 = '!';
                        break;
                    }
                    break;
                case 3160:
                    if (lowerCase.equals("bz")) {
                        c5 = '\"';
                        break;
                    }
                    break;
                case 3166:
                    if (lowerCase.equals("ca")) {
                        c5 = '#';
                        break;
                    }
                    break;
                case 3168:
                    if (lowerCase.equals("cc")) {
                        c5 = '$';
                        break;
                    }
                    break;
                case 3169:
                    if (lowerCase.equals("cd")) {
                        c5 = '%';
                        break;
                    }
                    break;
                case 3171:
                    if (lowerCase.equals("cf")) {
                        c5 = '&';
                        break;
                    }
                    break;
                case 3172:
                    if (lowerCase.equals("cg")) {
                        c5 = '\'';
                        break;
                    }
                    break;
                case 3173:
                    if (lowerCase.equals("ch")) {
                        c5 = '(';
                        break;
                    }
                    break;
                case 3174:
                    if (lowerCase.equals("ci")) {
                        c5 = ')';
                        break;
                    }
                    break;
                case 3176:
                    if (lowerCase.equals("ck")) {
                        c5 = '*';
                        break;
                    }
                    break;
                case 3177:
                    if (lowerCase.equals("cl")) {
                        c5 = '+';
                        break;
                    }
                    break;
                case 3178:
                    if (lowerCase.equals("cm")) {
                        c5 = ',';
                        break;
                    }
                    break;
                case 3179:
                    if (lowerCase.equals("cn")) {
                        c5 = '-';
                        break;
                    }
                    break;
                case 3180:
                    if (lowerCase.equals("co")) {
                        c5 = '.';
                        break;
                    }
                    break;
                case 3183:
                    if (lowerCase.equals("cr")) {
                        c5 = '/';
                        break;
                    }
                    break;
                case 3186:
                    if (lowerCase.equals("cu")) {
                        c5 = '0';
                        break;
                    }
                    break;
                case 3187:
                    if (lowerCase.equals("cv")) {
                        c5 = '1';
                        break;
                    }
                    break;
                case 3188:
                    if (lowerCase.equals("cw")) {
                        c5 = '2';
                        break;
                    }
                    break;
                case 3189:
                    if (lowerCase.equals("cx")) {
                        c5 = '3';
                        break;
                    }
                    break;
                case 3190:
                    if (lowerCase.equals("cy")) {
                        c5 = '4';
                        break;
                    }
                    break;
                case 3191:
                    if (lowerCase.equals("cz")) {
                        c5 = '5';
                        break;
                    }
                    break;
                case 3201:
                    if (lowerCase.equals("de")) {
                        c5 = '6';
                        break;
                    }
                    break;
                case 3206:
                    if (lowerCase.equals("dj")) {
                        c5 = '7';
                        break;
                    }
                    break;
                case 3207:
                    if (lowerCase.equals("dk")) {
                        c5 = '8';
                        break;
                    }
                    break;
                case 3209:
                    if (lowerCase.equals("dm")) {
                        c5 = '9';
                        break;
                    }
                    break;
                case 3211:
                    if (lowerCase.equals("do")) {
                        c5 = ':';
                        break;
                    }
                    break;
                case 3222:
                    if (lowerCase.equals("dz")) {
                        c5 = ';';
                        break;
                    }
                    break;
                case 3230:
                    if (lowerCase.equals("ec")) {
                        c5 = '<';
                        break;
                    }
                    break;
                case 3232:
                    if (lowerCase.equals("ee")) {
                        c5 = '=';
                        break;
                    }
                    break;
                case 3234:
                    if (lowerCase.equals("eg")) {
                        c5 = '>';
                        break;
                    }
                    break;
                case 3245:
                    if (lowerCase.equals("er")) {
                        c5 = '?';
                        break;
                    }
                    break;
                case 3246:
                    if (lowerCase.equals("es")) {
                        c5 = '@';
                        break;
                    }
                    break;
                case 3247:
                    if (lowerCase.equals("et")) {
                        c5 = 'A';
                        break;
                    }
                    break;
                case 3267:
                    if (lowerCase.equals("fi")) {
                        c5 = 'B';
                        break;
                    }
                    break;
                case 3268:
                    if (lowerCase.equals("fj")) {
                        c5 = 'C';
                        break;
                    }
                    break;
                case 3269:
                    if (lowerCase.equals("fk")) {
                        c5 = 'D';
                        break;
                    }
                    break;
                case 3271:
                    if (lowerCase.equals("fm")) {
                        c5 = 'E';
                        break;
                    }
                    break;
                case 3273:
                    if (lowerCase.equals("fo")) {
                        c5 = 'F';
                        break;
                    }
                    break;
                case 3276:
                    if (lowerCase.equals("fr")) {
                        c5 = 'G';
                        break;
                    }
                    break;
                case 3290:
                    if (lowerCase.equals("ga")) {
                        c5 = 'H';
                        break;
                    }
                    break;
                case 3291:
                    if (lowerCase.equals("gb")) {
                        c5 = 'I';
                        break;
                    }
                    break;
                case 3293:
                    if (lowerCase.equals("gd")) {
                        c5 = 'J';
                        break;
                    }
                    break;
                case 3294:
                    if (lowerCase.equals("ge")) {
                        c5 = 'K';
                        break;
                    }
                    break;
                case 3295:
                    if (lowerCase.equals("gf")) {
                        c5 = 'L';
                        break;
                    }
                    break;
                case 3296:
                    if (lowerCase.equals("gg")) {
                        c5 = 'M';
                        break;
                    }
                    break;
                case 3297:
                    if (lowerCase.equals("gh")) {
                        c5 = 'N';
                        break;
                    }
                    break;
                case 3298:
                    if (lowerCase.equals("gi")) {
                        c5 = 'O';
                        break;
                    }
                    break;
                case 3301:
                    if (lowerCase.equals("gl")) {
                        c5 = 'P';
                        break;
                    }
                    break;
                case 3302:
                    if (lowerCase.equals("gm")) {
                        c5 = 'Q';
                        break;
                    }
                    break;
                case 3303:
                    if (lowerCase.equals("gn")) {
                        c5 = 'R';
                        break;
                    }
                    break;
                case 3305:
                    if (lowerCase.equals("gp")) {
                        c5 = 'S';
                        break;
                    }
                    break;
                case 3306:
                    if (lowerCase.equals("gq")) {
                        c5 = 'T';
                        break;
                    }
                    break;
                case 3307:
                    if (lowerCase.equals("gr")) {
                        c5 = 'U';
                        break;
                    }
                    break;
                case 3309:
                    if (lowerCase.equals("gt")) {
                        c5 = 'V';
                        break;
                    }
                    break;
                case 3310:
                    if (lowerCase.equals("gu")) {
                        c5 = 'W';
                        break;
                    }
                    break;
                case 3312:
                    if (lowerCase.equals("gw")) {
                        c5 = 'X';
                        break;
                    }
                    break;
                case 3314:
                    if (lowerCase.equals("gy")) {
                        c5 = 'Y';
                        break;
                    }
                    break;
                case 3331:
                    if (lowerCase.equals("hk")) {
                        c5 = 'Z';
                        break;
                    }
                    break;
                case 3334:
                    if (lowerCase.equals("hn")) {
                        c5 = '[';
                        break;
                    }
                    break;
                case 3338:
                    if (lowerCase.equals("hr")) {
                        c5 = '\\';
                        break;
                    }
                    break;
                case 3340:
                    if (lowerCase.equals("ht")) {
                        c5 = ']';
                        break;
                    }
                    break;
                case 3341:
                    if (lowerCase.equals("hu")) {
                        c5 = '^';
                        break;
                    }
                    break;
                case 3355:
                    if (lowerCase.equals("id")) {
                        c5 = '_';
                        break;
                    }
                    break;
                case 3356:
                    if (lowerCase.equals("ie")) {
                        c5 = '`';
                        break;
                    }
                    break;
                case 3363:
                    if (lowerCase.equals("il")) {
                        c5 = 'a';
                        break;
                    }
                    break;
                case 3364:
                    if (lowerCase.equals("im")) {
                        c5 = 'b';
                        break;
                    }
                    break;
                case 3365:
                    if (lowerCase.equals("in")) {
                        c5 = 'c';
                        break;
                    }
                    break;
                case 3366:
                    if (lowerCase.equals("io")) {
                        c5 = 'd';
                        break;
                    }
                    break;
                case 3368:
                    if (lowerCase.equals("iq")) {
                        c5 = 'e';
                        break;
                    }
                    break;
                case 3369:
                    if (lowerCase.equals("ir")) {
                        c5 = 'f';
                        break;
                    }
                    break;
                case 3370:
                    if (lowerCase.equals("is")) {
                        c5 = 'g';
                        break;
                    }
                    break;
                case 3371:
                    if (lowerCase.equals("it")) {
                        c5 = 'h';
                        break;
                    }
                    break;
                case 3387:
                    if (lowerCase.equals("je")) {
                        c5 = 'i';
                        break;
                    }
                    break;
                case 3395:
                    if (lowerCase.equals("jm")) {
                        c5 = 'j';
                        break;
                    }
                    break;
                case 3397:
                    if (lowerCase.equals("jo")) {
                        c5 = 'k';
                        break;
                    }
                    break;
                case 3398:
                    if (lowerCase.equals("jp")) {
                        c5 = 'l';
                        break;
                    }
                    break;
                case 3418:
                    if (lowerCase.equals("ke")) {
                        c5 = 'm';
                        break;
                    }
                    break;
                case 3420:
                    if (lowerCase.equals("kg")) {
                        c5 = 'n';
                        break;
                    }
                    break;
                case 3421:
                    if (lowerCase.equals("kh")) {
                        c5 = 'o';
                        break;
                    }
                    break;
                case 3422:
                    if (lowerCase.equals("ki")) {
                        c5 = 'p';
                        break;
                    }
                    break;
                case 3426:
                    if (lowerCase.equals("km")) {
                        c5 = 'q';
                        break;
                    }
                    break;
                case 3427:
                    if (lowerCase.equals("kn")) {
                        c5 = 'r';
                        break;
                    }
                    break;
                case 3429:
                    if (lowerCase.equals("kp")) {
                        c5 = 's';
                        break;
                    }
                    break;
                case 3431:
                    if (lowerCase.equals("kr")) {
                        c5 = 't';
                        break;
                    }
                    break;
                case 3436:
                    if (lowerCase.equals("kw")) {
                        c5 = 'u';
                        break;
                    }
                    break;
                case 3438:
                    if (lowerCase.equals("ky")) {
                        c5 = 'v';
                        break;
                    }
                    break;
                case 3439:
                    if (lowerCase.equals("kz")) {
                        c5 = 'w';
                        break;
                    }
                    break;
                case 3445:
                    if (lowerCase.equals("la")) {
                        c5 = 'x';
                        break;
                    }
                    break;
                case 3446:
                    if (lowerCase.equals("lb")) {
                        c5 = 'y';
                        break;
                    }
                    break;
                case 3447:
                    if (lowerCase.equals("lc")) {
                        c5 = 'z';
                        break;
                    }
                    break;
                case 3453:
                    if (lowerCase.equals("li")) {
                        c5 = '{';
                        break;
                    }
                    break;
                case 3455:
                    if (lowerCase.equals("lk")) {
                        c5 = '|';
                        break;
                    }
                    break;
                case 3462:
                    if (lowerCase.equals("lr")) {
                        c5 = '}';
                        break;
                    }
                    break;
                case 3463:
                    if (lowerCase.equals("ls")) {
                        c5 = '~';
                        break;
                    }
                    break;
                case 3464:
                    if (lowerCase.equals("lt")) {
                        c5 = 127;
                        break;
                    }
                    break;
                case 3465:
                    if (lowerCase.equals("lu")) {
                        c5 = 128;
                        break;
                    }
                    break;
                case 3466:
                    if (lowerCase.equals("lv")) {
                        c5 = 129;
                        break;
                    }
                    break;
                case 3469:
                    if (lowerCase.equals("ly")) {
                        c5 = 130;
                        break;
                    }
                    break;
                case 3476:
                    if (lowerCase.equals("ma")) {
                        c5 = 131;
                        break;
                    }
                    break;
                case 3478:
                    if (lowerCase.equals("mc")) {
                        c5 = 132;
                        break;
                    }
                    break;
                case 3479:
                    if (lowerCase.equals("md")) {
                        c5 = 133;
                        break;
                    }
                    break;
                case 3480:
                    if (lowerCase.equals("me")) {
                        c5 = 134;
                        break;
                    }
                    break;
                case 3481:
                    if (lowerCase.equals("mf")) {
                        c5 = 135;
                        break;
                    }
                    break;
                case 3482:
                    if (lowerCase.equals("mg")) {
                        c5 = 136;
                        break;
                    }
                    break;
                case 3483:
                    if (lowerCase.equals("mh")) {
                        c5 = 137;
                        break;
                    }
                    break;
                case 3486:
                    if (lowerCase.equals("mk")) {
                        c5 = 138;
                        break;
                    }
                    break;
                case 3487:
                    if (lowerCase.equals("ml")) {
                        c5 = 139;
                        break;
                    }
                    break;
                case 3488:
                    if (lowerCase.equals("mm")) {
                        c5 = 140;
                        break;
                    }
                    break;
                case 3489:
                    if (lowerCase.equals("mn")) {
                        c5 = 141;
                        break;
                    }
                    break;
                case 3490:
                    if (lowerCase.equals("mo")) {
                        c5 = 142;
                        break;
                    }
                    break;
                case 3491:
                    if (lowerCase.equals("mp")) {
                        c5 = 143;
                        break;
                    }
                    break;
                case 3492:
                    if (lowerCase.equals("mq")) {
                        c5 = 144;
                        break;
                    }
                    break;
                case 3493:
                    if (lowerCase.equals("mr")) {
                        c5 = 145;
                        break;
                    }
                    break;
                case 3494:
                    if (lowerCase.equals("ms")) {
                        c5 = 146;
                        break;
                    }
                    break;
                case 3495:
                    if (lowerCase.equals("mt")) {
                        c5 = 147;
                        break;
                    }
                    break;
                case 3496:
                    if (lowerCase.equals("mu")) {
                        c5 = 148;
                        break;
                    }
                    break;
                case 3497:
                    if (lowerCase.equals("mv")) {
                        c5 = 149;
                        break;
                    }
                    break;
                case 3498:
                    if (lowerCase.equals("mw")) {
                        c5 = 150;
                        break;
                    }
                    break;
                case 3499:
                    if (lowerCase.equals("mx")) {
                        c5 = 151;
                        break;
                    }
                    break;
                case 3500:
                    if (lowerCase.equals("my")) {
                        c5 = 152;
                        break;
                    }
                    break;
                case 3501:
                    if (lowerCase.equals("mz")) {
                        c5 = 153;
                        break;
                    }
                    break;
                case 3507:
                    if (lowerCase.equals("na")) {
                        c5 = 154;
                        break;
                    }
                    break;
                case 3509:
                    if (lowerCase.equals("nc")) {
                        c5 = 155;
                        break;
                    }
                    break;
                case 3511:
                    if (lowerCase.equals("ne")) {
                        c5 = 156;
                        break;
                    }
                    break;
                case 3512:
                    if (lowerCase.equals("nf")) {
                        c5 = 157;
                        break;
                    }
                    break;
                case 3513:
                    if (lowerCase.equals("ng")) {
                        c5 = 158;
                        break;
                    }
                    break;
                case 3515:
                    if (lowerCase.equals("ni")) {
                        c5 = 159;
                        break;
                    }
                    break;
                case 3518:
                    if (lowerCase.equals("nl")) {
                        c5 = 160;
                        break;
                    }
                    break;
                case 3521:
                    if (lowerCase.equals("no")) {
                        c5 = 161;
                        break;
                    }
                    break;
                case 3522:
                    if (lowerCase.equals("np")) {
                        c5 = 162;
                        break;
                    }
                    break;
                case 3524:
                    if (lowerCase.equals("nr")) {
                        c5 = 163;
                        break;
                    }
                    break;
                case 3527:
                    if (lowerCase.equals("nu")) {
                        c5 = 164;
                        break;
                    }
                    break;
                case 3532:
                    if (lowerCase.equals("nz")) {
                        c5 = 165;
                        break;
                    }
                    break;
                case 3550:
                    if (lowerCase.equals("om")) {
                        c5 = 166;
                        break;
                    }
                    break;
                case 3569:
                    if (lowerCase.equals("pa")) {
                        c5 = 167;
                        break;
                    }
                    break;
                case 3573:
                    if (lowerCase.equals("pe")) {
                        c5 = 168;
                        break;
                    }
                    break;
                case 3574:
                    if (lowerCase.equals("pf")) {
                        c5 = 169;
                        break;
                    }
                    break;
                case 3575:
                    if (lowerCase.equals("pg")) {
                        c5 = 170;
                        break;
                    }
                    break;
                case 3576:
                    if (lowerCase.equals("ph")) {
                        c5 = 171;
                        break;
                    }
                    break;
                case 3579:
                    if (lowerCase.equals("pk")) {
                        c5 = 172;
                        break;
                    }
                    break;
                case 3580:
                    if (lowerCase.equals("pl")) {
                        c5 = 173;
                        break;
                    }
                    break;
                case 3581:
                    if (lowerCase.equals("pm")) {
                        c5 = 174;
                        break;
                    }
                    break;
                case 3582:
                    if (lowerCase.equals("pn")) {
                        c5 = 175;
                        break;
                    }
                    break;
                case 3586:
                    if (lowerCase.equals("pr")) {
                        c5 = 176;
                        break;
                    }
                    break;
                case 3587:
                    if (lowerCase.equals("ps")) {
                        c5 = 177;
                        break;
                    }
                    break;
                case 3588:
                    if (lowerCase.equals("pt")) {
                        c5 = 178;
                        break;
                    }
                    break;
                case 3591:
                    if (lowerCase.equals("pw")) {
                        c5 = 179;
                        break;
                    }
                    break;
                case 3593:
                    if (lowerCase.equals("py")) {
                        c5 = 180;
                        break;
                    }
                    break;
                case 3600:
                    if (lowerCase.equals("qa")) {
                        c5 = 181;
                        break;
                    }
                    break;
                case 3635:
                    if (lowerCase.equals("re")) {
                        c5 = 182;
                        break;
                    }
                    break;
                case 3645:
                    if (lowerCase.equals("ro")) {
                        c5 = 183;
                        break;
                    }
                    break;
                case 3649:
                    if (lowerCase.equals("rs")) {
                        c5 = 184;
                        break;
                    }
                    break;
                case 3651:
                    if (lowerCase.equals("ru")) {
                        c5 = 185;
                        break;
                    }
                    break;
                case 3653:
                    if (lowerCase.equals("rw")) {
                        c5 = 186;
                        break;
                    }
                    break;
                case 3662:
                    if (lowerCase.equals("sa")) {
                        c5 = 187;
                        break;
                    }
                    break;
                case 3663:
                    if (lowerCase.equals("sb")) {
                        c5 = 188;
                        break;
                    }
                    break;
                case 3664:
                    if (lowerCase.equals("sc")) {
                        c5 = 189;
                        break;
                    }
                    break;
                case 3665:
                    if (lowerCase.equals("sd")) {
                        c5 = 190;
                        break;
                    }
                    break;
                case 3666:
                    if (lowerCase.equals("se")) {
                        c5 = 191;
                        break;
                    }
                    break;
                case 3668:
                    if (lowerCase.equals("sg")) {
                        c5 = 192;
                        break;
                    }
                    break;
                case 3669:
                    if (lowerCase.equals("sh")) {
                        c5 = 193;
                        break;
                    }
                    break;
                case 3670:
                    if (lowerCase.equals("si")) {
                        c5 = 194;
                        break;
                    }
                    break;
                case 3672:
                    if (lowerCase.equals("sk")) {
                        c5 = 195;
                        break;
                    }
                    break;
                case 3673:
                    if (lowerCase.equals("sl")) {
                        c5 = 196;
                        break;
                    }
                    break;
                case 3674:
                    if (lowerCase.equals("sm")) {
                        c5 = 197;
                        break;
                    }
                    break;
                case 3675:
                    if (lowerCase.equals("sn")) {
                        c5 = 198;
                        break;
                    }
                    break;
                case 3676:
                    if (lowerCase.equals("so")) {
                        c5 = 199;
                        break;
                    }
                    break;
                case 3679:
                    if (lowerCase.equals("sr")) {
                        c5 = 200;
                        break;
                    }
                    break;
                case 3680:
                    if (lowerCase.equals("ss")) {
                        c5 = 201;
                        break;
                    }
                    break;
                case 3681:
                    if (lowerCase.equals("st")) {
                        c5 = 202;
                        break;
                    }
                    break;
                case 3683:
                    if (lowerCase.equals("sv")) {
                        c5 = 203;
                        break;
                    }
                    break;
                case 3685:
                    if (lowerCase.equals("sx")) {
                        c5 = 204;
                        break;
                    }
                    break;
                case 3686:
                    if (lowerCase.equals("sy")) {
                        c5 = 205;
                        break;
                    }
                    break;
                case 3687:
                    if (lowerCase.equals("sz")) {
                        c5 = 206;
                        break;
                    }
                    break;
                case 3695:
                    if (lowerCase.equals("tc")) {
                        c5 = 207;
                        break;
                    }
                    break;
                case 3696:
                    if (lowerCase.equals("td")) {
                        c5 = 208;
                        break;
                    }
                    break;
                case 3699:
                    if (lowerCase.equals("tg")) {
                        c5 = 209;
                        break;
                    }
                    break;
                case 3700:
                    if (lowerCase.equals("th")) {
                        c5 = 210;
                        break;
                    }
                    break;
                case 3702:
                    if (lowerCase.equals("tj")) {
                        c5 = 211;
                        break;
                    }
                    break;
                case 3703:
                    if (lowerCase.equals("tk")) {
                        c5 = 212;
                        break;
                    }
                    break;
                case 3704:
                    if (lowerCase.equals("tl")) {
                        c5 = 213;
                        break;
                    }
                    break;
                case 3705:
                    if (lowerCase.equals("tm")) {
                        c5 = 214;
                        break;
                    }
                    break;
                case 3706:
                    if (lowerCase.equals("tn")) {
                        c5 = 215;
                        break;
                    }
                    break;
                case 3707:
                    if (lowerCase.equals("to")) {
                        c5 = 216;
                        break;
                    }
                    break;
                case 3710:
                    if (lowerCase.equals("tr")) {
                        c5 = 217;
                        break;
                    }
                    break;
                case 3712:
                    if (lowerCase.equals("tt")) {
                        c5 = 218;
                        break;
                    }
                    break;
                case 3714:
                    if (lowerCase.equals("tv")) {
                        c5 = 219;
                        break;
                    }
                    break;
                case 3715:
                    if (lowerCase.equals("tw")) {
                        c5 = 220;
                        break;
                    }
                    break;
                case 3718:
                    if (lowerCase.equals("tz")) {
                        c5 = 221;
                        break;
                    }
                    break;
                case 3724:
                    if (lowerCase.equals("ua")) {
                        c5 = 222;
                        break;
                    }
                    break;
                case 3730:
                    if (lowerCase.equals("ug")) {
                        c5 = 223;
                        break;
                    }
                    break;
                case 3742:
                    if (lowerCase.equals("us")) {
                        c5 = 224;
                        break;
                    }
                    break;
                case 3748:
                    if (lowerCase.equals("uy")) {
                        c5 = 225;
                        break;
                    }
                    break;
                case 3749:
                    if (lowerCase.equals("uz")) {
                        c5 = 226;
                        break;
                    }
                    break;
                case 3755:
                    if (lowerCase.equals("va")) {
                        c5 = 227;
                        break;
                    }
                    break;
                case 3757:
                    if (lowerCase.equals("vc")) {
                        c5 = 228;
                        break;
                    }
                    break;
                case 3759:
                    if (lowerCase.equals("ve")) {
                        c5 = 229;
                        break;
                    }
                    break;
                case 3761:
                    if (lowerCase.equals("vg")) {
                        c5 = 230;
                        break;
                    }
                    break;
                case 3763:
                    if (lowerCase.equals("vi")) {
                        c5 = 231;
                        break;
                    }
                    break;
                case 3768:
                    if (lowerCase.equals("vn")) {
                        c5 = 232;
                        break;
                    }
                    break;
                case 3775:
                    if (lowerCase.equals("vu")) {
                        c5 = 233;
                        break;
                    }
                    break;
                case 3791:
                    if (lowerCase.equals("wf")) {
                        c5 = 234;
                        break;
                    }
                    break;
                case 3804:
                    if (lowerCase.equals("ws")) {
                        c5 = 235;
                        break;
                    }
                    break;
                case 3827:
                    if (lowerCase.equals("xk")) {
                        c5 = 236;
                        break;
                    }
                    break;
                case 3852:
                    if (lowerCase.equals("ye")) {
                        c5 = 237;
                        break;
                    }
                    break;
                case 3867:
                    if (lowerCase.equals("yt")) {
                        c5 = 238;
                        break;
                    }
                    break;
                case 3879:
                    if (lowerCase.equals("za")) {
                        c5 = 239;
                        break;
                    }
                    break;
                case 3891:
                    if (lowerCase.equals("zm")) {
                        c5 = 240;
                        break;
                    }
                    break;
                case 3901:
                    if (lowerCase.equals("zw")) {
                        c5 = 241;
                        break;
                    }
                    break;
            }
            switch (c5) {
                case 0:
                    i = R.drawable.flag_andorra;
                    break;
                case 1:
                    i = R.drawable.flag_uae;
                    break;
                case 2:
                    i = R.drawable.flag_afghanistan;
                    break;
                case 3:
                    i = R.drawable.flag_antigua_and_barbuda;
                    break;
                case 4:
                    i = R.drawable.flag_anguilla;
                    break;
                case 5:
                    i = R.drawable.flag_albania;
                    break;
                case 6:
                    i = R.drawable.flag_armenia;
                    break;
                case 7:
                    i = R.drawable.flag_angola;
                    break;
                case '\b':
                    i = R.drawable.flag_antarctica;
                    break;
                case '\t':
                    i = R.drawable.flag_argentina;
                    break;
                case '\n':
                    i = R.drawable.flag_american_samoa;
                    break;
                case 11:
                    i = R.drawable.flag_austria;
                    break;
                case '\f':
                    i = R.drawable.flag_australia;
                    break;
                case '\r':
                    i = R.drawable.flag_aruba;
                    break;
                case 14:
                    i = R.drawable.flag_aland;
                    break;
                case 15:
                    i = R.drawable.flag_azerbaijan;
                    break;
                case 16:
                    i = R.drawable.flag_bosnia;
                    break;
                case 17:
                    i = R.drawable.flag_barbados;
                    break;
                case 18:
                    i = R.drawable.flag_bangladesh;
                    break;
                case 19:
                    i = R.drawable.flag_belgium;
                    break;
                case 20:
                    i = R.drawable.flag_burkina_faso;
                    break;
                case 21:
                    i = R.drawable.flag_bulgaria;
                    break;
                case 22:
                    i = R.drawable.flag_bahrain;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    i = R.drawable.flag_burundi;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    i = R.drawable.flag_benin;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_STRING /* 25 */:
                    i = R.drawable.flag_saint_barthelemy;
                    break;
                case 26:
                    i = R.drawable.flag_bermuda;
                    break;
                case 27:
                    i = R.drawable.flag_brunei;
                    break;
                case 28:
                    i = R.drawable.flag_bolivia;
                    break;
                case 29:
                    i = R.drawable.flag_brazil;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_BLOB /* 30 */:
                    i = R.drawable.flag_bahamas;
                    break;
                case 31:
                    i = R.drawable.flag_bhutan;
                    break;
                case ' ':
                    i = R.drawable.flag_botswana;
                    break;
                case '!':
                    i = R.drawable.flag_belarus;
                    break;
                case '\"':
                    i = R.drawable.flag_belize;
                    break;
                case '#':
                    i = R.drawable.flag_canada;
                    break;
                case '$':
                    i = R.drawable.flag_cocos;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_REFERENCE /* 37 */:
                    i = R.drawable.flag_democratic_republic_of_the_congo;
                    break;
                case '&':
                    i = R.drawable.flag_central_african_republic;
                    break;
                case '\'':
                    i = R.drawable.flag_republic_of_the_congo;
                    break;
                case '(':
                    i = R.drawable.flag_switzerland;
                    break;
                case ')':
                    i = R.drawable.flag_cote_divoire;
                    break;
                case '*':
                    i = R.drawable.flag_cook_islands;
                    break;
                case '+':
                    i = R.drawable.flag_chile;
                    break;
                case ',':
                    i = R.drawable.flag_cameroon;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_GEOPOINT /* 45 */:
                    i = R.drawable.flag_china;
                    break;
                case '.':
                    i = R.drawable.flag_colombia;
                    break;
                case '/':
                    i = R.drawable.flag_costa_rica;
                    break;
                case '0':
                    i = R.drawable.flag_cuba;
                    break;
                case '1':
                    i = R.drawable.flag_cape_verde;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_ARRAY /* 50 */:
                    i = R.drawable.flag_curacao;
                    break;
                case '3':
                    i = R.drawable.flag_christmas_island;
                    break;
                case '4':
                    i = R.drawable.flag_cyprus;
                    break;
                case '5':
                    i = R.drawable.flag_czech_republic;
                    break;
                case '6':
                    i = R.drawable.flag_germany;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_MAP /* 55 */:
                    i = R.drawable.flag_djibouti;
                    break;
                case '8':
                    i = R.drawable.flag_denmark;
                    break;
                case '9':
                    i = R.drawable.flag_dominica;
                    break;
                case ':':
                    i = R.drawable.flag_dominican_republic;
                    break;
                case ';':
                    i = R.drawable.flag_algeria;
                    break;
                case FirestoreIndexValueWriter.INDEX_TYPE_REFERENCE_SEGMENT /* 60 */:
                    i = R.drawable.flag_ecuador;
                    break;
                case '=':
                    i = R.drawable.flag_estonia;
                    break;
                case '>':
                    i = R.drawable.flag_egypt;
                    break;
                case '?':
                    i = R.drawable.flag_eritrea;
                    break;
                case UserVerificationMethods.USER_VERIFY_EYEPRINT /* 64 */:
                    i = R.drawable.flag_spain;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    i = R.drawable.flag_ethiopia;
                    break;
                case 'B':
                    i = R.drawable.flag_finland;
                    break;
                case 'C':
                    i = R.drawable.flag_fiji;
                    break;
                case 'D':
                    i = R.drawable.flag_falkland_islands;
                    break;
                case 'E':
                    i = R.drawable.flag_micronesia;
                    break;
                case 'F':
                    i = R.drawable.flag_faroe_islands;
                    break;
                case 'G':
                    i = R.drawable.flag_france;
                    break;
                case 'H':
                    i = R.drawable.flag_gabon;
                    break;
                case 'I':
                    i = R.drawable.flag_united_kingdom;
                    break;
                case 'J':
                    i = R.drawable.flag_grenada;
                    break;
                case 'K':
                    i = R.drawable.flag_georgia;
                    break;
                case 'L':
                    i = R.drawable.flag_guyane;
                    break;
                case 'M':
                    i = R.drawable.flag_guernsey;
                    break;
                case 'N':
                    i = R.drawable.flag_ghana;
                    break;
                case 'O':
                    i = R.drawable.flag_gibraltar;
                    break;
                case 'P':
                    i = R.drawable.flag_greenland;
                    break;
                case 'Q':
                    i = R.drawable.flag_gambia;
                    break;
                case 'R':
                    i = R.drawable.flag_guinea;
                    break;
                case 'S':
                    i = R.drawable.flag_guadeloupe;
                    break;
                case 'T':
                    i = R.drawable.flag_equatorial_guinea;
                    break;
                case 'U':
                    i = R.drawable.flag_greece;
                    break;
                case 'V':
                    i = R.drawable.flag_guatemala;
                    break;
                case 'W':
                    i = R.drawable.flag_guam;
                    break;
                case 'X':
                    i = R.drawable.flag_guinea_bissau;
                    break;
                case ModuleDescriptor.MODULE_VERSION /* 89 */:
                    i = R.drawable.flag_guyana;
                    break;
                case 'Z':
                    i = R.drawable.flag_hong_kong;
                    break;
                case '[':
                    i = R.drawable.flag_honduras;
                    break;
                case '\\':
                    i = R.drawable.flag_croatia;
                    break;
                case ']':
                    i = R.drawable.flag_haiti;
                    break;
                case '^':
                    i = R.drawable.flag_hungary;
                    break;
                case '_':
                    i = R.drawable.flag_indonesia;
                    break;
                case '`':
                    i = R.drawable.flag_ireland;
                    break;
                case 'a':
                    i = R.drawable.flag_israel;
                    break;
                case 'b':
                    i = R.drawable.flag_isleof_man;
                    break;
                case 'c':
                    i = R.drawable.flag_india;
                    break;
                case LocationRequest.PRIORITY_HIGH_ACCURACY /* 100 */:
                    i = R.drawable.flag_british_indian_ocean_territory;
                    break;
                case 'e':
                    i = R.drawable.flag_iraq_new;
                    break;
                case LocationRequest.PRIORITY_BALANCED_POWER_ACCURACY /* 102 */:
                    i = R.drawable.flag_iran;
                    break;
                case 'g':
                    i = R.drawable.flag_iceland;
                    break;
                case LocationRequest.PRIORITY_LOW_POWER /* 104 */:
                    i = R.drawable.flag_italy;
                    break;
                case LocationRequest.PRIORITY_NO_POWER /* 105 */:
                    i = R.drawable.flag_jersey;
                    break;
                case 'j':
                    i = R.drawable.flag_jamaica;
                    break;
                case 'k':
                    i = R.drawable.flag_jordan;
                    break;
                case 'l':
                    i = R.drawable.flag_japan;
                    break;
                case 'm':
                    i = R.drawable.flag_kenya;
                    break;
                case 'n':
                    i = R.drawable.flag_kyrgyzstan;
                    break;
                case 'o':
                    i = R.drawable.flag_cambodia;
                    break;
                case 'p':
                    i = R.drawable.flag_kiribati;
                    break;
                case 'q':
                    i = R.drawable.flag_comoros;
                    break;
                case 'r':
                    i = R.drawable.flag_saint_kitts_and_nevis;
                    break;
                case 's':
                    i = R.drawable.flag_north_korea;
                    break;
                case 't':
                    i = R.drawable.flag_south_korea;
                    break;
                case 'u':
                    i = R.drawable.flag_kuwait;
                    break;
                case 'v':
                    i = R.drawable.flag_cayman_islands;
                    break;
                case 'w':
                    i = R.drawable.flag_kazakhstan;
                    break;
                case 'x':
                    i = R.drawable.flag_laos;
                    break;
                case 'y':
                    i = R.drawable.flag_lebanon;
                    break;
                case 'z':
                    i = R.drawable.flag_saint_lucia;
                    break;
                case '{':
                    i = R.drawable.flag_liechtenstein;
                    break;
                case '|':
                    i = R.drawable.flag_sri_lanka;
                    break;
                case '}':
                    i = R.drawable.flag_liberia;
                    break;
                case '~':
                    i = R.drawable.flag_lesotho;
                    break;
                case 127:
                    i = R.drawable.flag_lithuania;
                    break;
                case UserVerificationMethods.USER_VERIFY_PATTERN /* 128 */:
                    i = R.drawable.flag_luxembourg;
                    break;
                case 129:
                    i = R.drawable.flag_latvia;
                    break;
                case 130:
                    i = R.drawable.flag_libya;
                    break;
                case 131:
                    i = R.drawable.flag_morocco;
                    break;
                case 132:
                    i = R.drawable.flag_monaco;
                    break;
                case 133:
                    i = R.drawable.flag_moldova;
                    break;
                case 134:
                    i = R.drawable.flag_of_montenegro;
                    break;
                case 135:
                    i = R.drawable.flag_saint_martin;
                    break;
                case 136:
                    i = R.drawable.flag_madagascar;
                    break;
                case 137:
                    i = R.drawable.flag_marshall_islands;
                    break;
                case 138:
                    i = R.drawable.flag_macedonia;
                    break;
                case 139:
                    i = R.drawable.flag_mali;
                    break;
                case 140:
                    i = R.drawable.flag_myanmar;
                    break;
                case 141:
                    i = R.drawable.flag_mongolia;
                    break;
                case 142:
                    i = R.drawable.flag_macao;
                    break;
                case 143:
                    i = R.drawable.flag_northern_mariana_islands;
                    break;
                case 144:
                case 182:
                case 238:
                    break;
                case 145:
                    i = R.drawable.flag_mauritania;
                    break;
                case 146:
                    i = R.drawable.flag_montserrat;
                    break;
                case 147:
                    i = R.drawable.flag_malta;
                    break;
                case 148:
                    i = R.drawable.flag_mauritius;
                    break;
                case 149:
                    i = R.drawable.flag_maldives;
                    break;
                case 150:
                    i = R.drawable.flag_malawi;
                    break;
                case 151:
                    i = R.drawable.flag_mexico;
                    break;
                case 152:
                    i = R.drawable.flag_malaysia;
                    break;
                case 153:
                    i = R.drawable.flag_mozambique;
                    break;
                case 154:
                    i = R.drawable.flag_namibia;
                    break;
                case 155:
                    i = R.drawable.flag_new_caledonia;
                    break;
                case 156:
                    i = R.drawable.flag_niger;
                    break;
                case 157:
                    i = R.drawable.flag_norfolk_island;
                    break;
                case 158:
                    i = R.drawable.flag_nigeria;
                    break;
                case 159:
                    i = R.drawable.flag_nicaragua;
                    break;
                case 160:
                    i = R.drawable.flag_netherlands;
                    break;
                case 161:
                    i = R.drawable.flag_norway;
                    break;
                case 162:
                    i = R.drawable.flag_nepal;
                    break;
                case 163:
                    i = R.drawable.flag_nauru;
                    break;
                case 164:
                    i = R.drawable.flag_niue;
                    break;
                case 165:
                    i = R.drawable.flag_new_zealand;
                    break;
                case 166:
                    i = R.drawable.flag_oman;
                    break;
                case 167:
                    i = R.drawable.flag_panama;
                    break;
                case 168:
                    i = R.drawable.flag_peru;
                    break;
                case 169:
                    i = R.drawable.flag_french_polynesia;
                    break;
                case 170:
                    i = R.drawable.flag_papua_new_guinea;
                    break;
                case 171:
                    i = R.drawable.flag_philippines;
                    break;
                case 172:
                    i = R.drawable.flag_pakistan;
                    break;
                case 173:
                    i = R.drawable.flag_poland;
                    break;
                case 174:
                    i = R.drawable.flag_saint_pierre;
                    break;
                case 175:
                    i = R.drawable.flag_pitcairn_islands;
                    break;
                case 176:
                    i = R.drawable.flag_puerto_rico;
                    break;
                case 177:
                    i = R.drawable.flag_palestine;
                    break;
                case 178:
                    i = R.drawable.flag_portugal;
                    break;
                case 179:
                    i = R.drawable.flag_palau;
                    break;
                case 180:
                    i = R.drawable.flag_paraguay;
                    break;
                case 181:
                    i = R.drawable.flag_qatar;
                    break;
                case 183:
                    i = R.drawable.flag_romania;
                    break;
                case 184:
                    i = R.drawable.flag_serbia;
                    break;
                case 185:
                    i = R.drawable.flag_russian_federation;
                    break;
                case 186:
                    i = R.drawable.flag_rwanda;
                    break;
                case 187:
                    i = R.drawable.flag_saudi_arabia;
                    break;
                case 188:
                    i = R.drawable.flag_soloman_islands;
                    break;
                case 189:
                    i = R.drawable.flag_seychelles;
                    break;
                case 190:
                    i = R.drawable.flag_sudan;
                    break;
                case 191:
                    i = R.drawable.flag_sweden;
                    break;
                case 192:
                    i = R.drawable.flag_singapore;
                    break;
                case 193:
                    i = R.drawable.flag_saint_helena;
                    break;
                case 194:
                    i = R.drawable.flag_slovenia;
                    break;
                case 195:
                    i = R.drawable.flag_slovakia;
                    break;
                case 196:
                    i = R.drawable.flag_sierra_leone;
                    break;
                case 197:
                    i = R.drawable.flag_san_marino;
                    break;
                case 198:
                    i = R.drawable.flag_senegal;
                    break;
                case 199:
                    i = R.drawable.flag_somalia;
                    break;
                case 200:
                    i = R.drawable.flag_suriname;
                    break;
                case 201:
                    i = R.drawable.flag_south_sudan;
                    break;
                case 202:
                    i = R.drawable.flag_sao_tome_and_principe;
                    break;
                case 203:
                    i = R.drawable.flag_el_salvador;
                    break;
                case 204:
                    i = R.drawable.flag_sint_maarten;
                    break;
                case 205:
                    i = R.drawable.flag_syria;
                    break;
                case 206:
                    i = R.drawable.flag_swaziland;
                    break;
                case 207:
                    i = R.drawable.flag_turks_and_caicos_islands;
                    break;
                case 208:
                    i = R.drawable.flag_chad;
                    break;
                case 209:
                    i = R.drawable.flag_togo;
                    break;
                case 210:
                    i = R.drawable.flag_thailand;
                    break;
                case 211:
                    i = R.drawable.flag_tajikistan;
                    break;
                case 212:
                    i = R.drawable.flag_tokelau;
                    break;
                case 213:
                    i = R.drawable.flag_timor_leste;
                    break;
                case 214:
                    i = R.drawable.flag_turkmenistan;
                    break;
                case 215:
                    i = R.drawable.flag_tunisia;
                    break;
                case 216:
                    i = R.drawable.flag_tonga;
                    break;
                case 217:
                    i = R.drawable.flag_turkey;
                    break;
                case 218:
                    i = R.drawable.flag_trinidad_and_tobago;
                    break;
                case 219:
                    i = R.drawable.flag_tuvalu;
                    break;
                case 220:
                    i = R.drawable.flag_taiwan;
                    break;
                case 221:
                    i = R.drawable.flag_tanzania;
                    break;
                case 222:
                    i = R.drawable.flag_ukraine;
                    break;
                case 223:
                    i = R.drawable.flag_uganda;
                    break;
                case 224:
                    i = R.drawable.flag_united_states_of_america;
                    break;
                case 225:
                    i = R.drawable.flag_uruguay;
                    break;
                case 226:
                    i = R.drawable.flag_uzbekistan;
                    break;
                case 227:
                    i = R.drawable.flag_vatican_city;
                    break;
                case 228:
                    i = R.drawable.flag_saint_vicent_and_the_grenadines;
                    break;
                case 229:
                    i = R.drawable.flag_venezuela;
                    break;
                case 230:
                    i = R.drawable.flag_british_virgin_islands;
                    break;
                case 231:
                    i = R.drawable.flag_us_virgin_islands;
                    break;
                case 232:
                    i = R.drawable.flag_vietnam;
                    break;
                case 233:
                    i = R.drawable.flag_vanuatu;
                    break;
                case 234:
                    i = R.drawable.flag_wallis_and_futuna;
                    break;
                case 235:
                    i = R.drawable.flag_samoa;
                    break;
                case 236:
                    i = R.drawable.flag_kosovo;
                    break;
                case 237:
                    i = R.drawable.flag_yemen;
                    break;
                case 239:
                    i = R.drawable.flag_south_africa;
                    break;
                case 240:
                    i = R.drawable.flag_zambia;
                    break;
                case 241:
                    i = R.drawable.flag_zimbabwe;
                    break;
                default:
                    i = R.drawable.flag_transparent;
                    break;
            }
            this.f4869e = i;
        }
        return this.f4869e;
    }

    public final boolean k(String str) {
        String lowerCase = str.toLowerCase();
        return a("Name", this.f4867c, lowerCase) || a("NameCode", this.f4865a, lowerCase) || a("PhoneCode", this.f4866b, lowerCase) || a("EnglishName", this.f4868d, lowerCase);
    }

    public final void m() {
        try {
            Log.d("Class Country", "Country->" + this.f4865a + ":" + this.f4866b + ":" + this.f4867c);
        } catch (NullPointerException unused) {
            Log.d("Class Country", "Null");
        }
    }
}
