package com.google.android.play.core.integrity;
/* loaded from: classes2.dex */
final class ao extends IntegrityTokenRequest {

    /* renamed from: a  reason: collision with root package name */
    private final String f6111a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f6112b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f6113c = null;

    public /* synthetic */ ao(String str, Long l5, Object obj, an anVar) {
        this.f6111a = str;
        this.f6112b = l5;
    }

    private static boolean a() {
        return true;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final Long cloudProjectNumber() {
        return this.f6112b;
    }

    public final boolean equals(Object obj) {
        boolean z4;
        Long l5;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f6111a.equals(integrityTokenRequest.nonce()) && ((l5 = this.f6112b) != null ? l5.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                z4 = true;
                if ((obj instanceof ao) || !a()) {
                    return z4;
                }
                ao aoVar = (ao) obj;
                if (z4) {
                    Object obj2 = aoVar.f6113c;
                    return true;
                }
                return false;
            }
        }
        z4 = false;
        if (obj instanceof ao) {
        }
        return z4;
    }

    public final int hashCode() {
        int hashCode = this.f6111a.hashCode() ^ 1000003;
        Long l5 = this.f6112b;
        int hashCode2 = (hashCode * 1000003) ^ (l5 == null ? 0 : l5.hashCode());
        return a() ? hashCode2 * 1000003 : hashCode2;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f6111a;
    }

    public final String toString() {
        String str = "IntegrityTokenRequest{nonce=" + this.f6111a + ", cloudProjectNumber=" + this.f6112b;
        if (a()) {
            str = str.concat(", network=null");
        }
        return str.concat("}");
    }
}
