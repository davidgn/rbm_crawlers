.class public final Lcom/google/android/gms/internal/ads/zzbpz;
.super Lcom/google/android/gms/internal/ads/zzbdj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqb;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbuh;ILcom/google/android/gms/internal/ads/zzbpv;)Lcom/google/android/gms/internal/ads/zzbpy;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdj;->zza()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbdl;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzbdl;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xf869c00

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzbdl;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbdj;->zzcZ(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager"

    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Lcom/google/android/gms/internal/ads/zzbpy;

    if-eqz p4, :cond_1

    move-object p2, p3

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbpy;

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzbpw;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbpw;-><init>(Landroid/os/IBinder;)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
