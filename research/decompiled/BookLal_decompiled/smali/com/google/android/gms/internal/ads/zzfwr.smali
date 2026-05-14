.class public final Lcom/google/android/gms/internal/ads/zzfwr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxd;->zza()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfxb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfxb;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfxb;->zzc(I)Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxa;->zza()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfwz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfwz;->zzb(I)Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfxb;->zzb(Lcom/google/android/gms/internal/ads/zzfwz;)Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfxd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzfws;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfxd;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfws;->zza()V

    return-void
.end method
