package l0;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
/* renamed from: l0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0614a {

    /* renamed from: a  reason: collision with root package name */
    public final IntentFilter f8676a;

    /* renamed from: b  reason: collision with root package name */
    public final BroadcastReceiver f8677b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8678c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8679d;

    public C0614a(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        this.f8676a = intentFilter;
        this.f8677b = broadcastReceiver;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((int) UserVerificationMethods.USER_VERIFY_PATTERN);
        sb.append("Receiver{");
        sb.append(this.f8677b);
        sb.append(" filter=");
        sb.append(this.f8676a);
        if (this.f8679d) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
