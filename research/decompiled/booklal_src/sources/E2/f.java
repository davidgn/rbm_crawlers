package E2;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f728a;

    public f(String str, int i) {
        switch (i) {
            case 1:
                str.getClass();
                this.f728a = str;
                return;
            default:
                int myUid = Process.myUid();
                int myPid = Process.myPid();
                this.f728a = ("UID: [" + myUid + "]  PID: [" + myPid + "] ").concat(str);
                return;
        }
    }

    public static String b(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e5) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e5);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + "]";
            }
        }
        return C.a.v(str, " : ", str2);
    }

    public void a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", b(this.f728a, str, objArr));
        }
    }
}
