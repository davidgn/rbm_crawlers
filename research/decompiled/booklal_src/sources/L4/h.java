package L4;

import d3.C0377a;
import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.Conscrypt;
/* loaded from: classes2.dex */
public final class h extends n {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f1768d;

    /* renamed from: c  reason: collision with root package name */
    public final Provider f1769c;

    static {
        boolean z4 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, f.class.getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (f.a()) {
                    z4 = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f1768d = z4;
    }

    public h() {
        Provider newProvider = Conscrypt.newProvider();
        kotlin.jvm.internal.i.e(newProvider, "newProvider()");
        this.f1769c = newProvider;
    }

    @Override // L4.n
    public final void d(SSLSocket sSLSocket, String str, List protocols) {
        kotlin.jvm.internal.i.f(protocols, "protocols");
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.d(sSLSocket, str, protocols);
            return;
        }
        Conscrypt.setUseSessionTickets(sSLSocket, true);
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) C0377a.p(protocols).toArray(new String[0]));
    }

    @Override // L4.n
    public final String f(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // L4.n
    public final SSLContext k() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f1769c);
        kotlin.jvm.internal.i.e(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // L4.n
    public final SSLSocketFactory l(X509TrustManager x509TrustManager) {
        SSLContext k5 = k();
        k5.init(null, new TrustManager[]{x509TrustManager}, null);
        SSLSocketFactory socketFactory = k5.getSocketFactory();
        kotlin.jvm.internal.i.e(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // L4.n
    public final X509TrustManager m() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        kotlin.jvm.internal.i.c(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                kotlin.jvm.internal.i.d(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, g.f1767a);
                return x509TrustManager;
            }
        }
        String arrays = Arrays.toString(trustManagers);
        kotlin.jvm.internal.i.e(arrays, "toString(this)");
        throw new IllegalStateException("Unexpected default trust managers: ".concat(arrays).toString());
    }
}
