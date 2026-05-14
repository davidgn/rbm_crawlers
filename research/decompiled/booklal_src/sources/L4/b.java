package L4;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes2.dex */
public final class b implements P4.d {

    /* renamed from: a  reason: collision with root package name */
    public final X509TrustManager f1759a;

    /* renamed from: b  reason: collision with root package name */
    public final Method f1760b;

    public b(X509TrustManager x509TrustManager, Method method) {
        this.f1759a = x509TrustManager;
        this.f1760b = method;
    }

    @Override // P4.d
    public final X509Certificate a(X509Certificate x509Certificate) {
        try {
            Object invoke = this.f1760b.invoke(this.f1759a, x509Certificate);
            kotlin.jvm.internal.i.d(invoke, "null cannot be cast to non-null type java.security.cert.TrustAnchor");
            return ((TrustAnchor) invoke).getTrustedCert();
        } catch (IllegalAccessException e5) {
            throw new AssertionError("unable to get issues and signature", e5);
        } catch (InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return kotlin.jvm.internal.i.a(this.f1759a, bVar.f1759a) && kotlin.jvm.internal.i.a(this.f1760b, bVar.f1760b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1760b.hashCode() + (this.f1759a.hashCode() * 31);
    }

    public final String toString() {
        return "CustomTrustRootIndex(trustManager=" + this.f1759a + ", findByIssuerAndSignatureMethod=" + this.f1760b + ')';
    }
}
