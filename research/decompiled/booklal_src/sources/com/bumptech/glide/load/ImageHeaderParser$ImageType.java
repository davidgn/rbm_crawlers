package com.bumptech.glide.load;
/* loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    UNKNOWN(false);
    

    /* renamed from: a  reason: collision with root package name */
    public final boolean f5646a;

    ImageHeaderParser$ImageType(boolean z4) {
        this.f5646a = z4;
    }

    public boolean hasAlpha() {
        return this.f5646a;
    }
}
