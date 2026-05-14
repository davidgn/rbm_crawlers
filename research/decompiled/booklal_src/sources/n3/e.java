package n3;

import java.security.PrivilegedExceptionAction;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* loaded from: classes2.dex */
public final class e implements PrivilegedExceptionAction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9620a;

    @Override // java.security.PrivilegedExceptionAction
    public final Object run() {
        switch (this.f9620a) {
            case 0:
                return SSLEngine.class.getMethod("getApplicationProtocol", null);
            case 1:
                return SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
            default:
                return SSLSocket.class.getMethod("getApplicationProtocol", null);
        }
    }
}
