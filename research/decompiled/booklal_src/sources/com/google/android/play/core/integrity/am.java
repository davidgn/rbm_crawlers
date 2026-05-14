package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.IntegrityTokenRequest;
/* loaded from: classes2.dex */
final class am extends IntegrityTokenRequest.Builder {

    /* renamed from: a  reason: collision with root package name */
    private String f6109a;

    /* renamed from: b  reason: collision with root package name */
    private Long f6110b;

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest build() {
        String str = this.f6109a;
        if (str != null) {
            return new ao(str, this.f6110b, null, null);
        }
        throw new IllegalStateException("Missing required properties: nonce");
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j5) {
        this.f6110b = Long.valueOf(j5);
        return this;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str != null) {
            this.f6109a = str;
            return this;
        }
        throw new NullPointerException("Null nonce");
    }
}
