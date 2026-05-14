.class public final Lcom/google/android/gms/internal/ads/zzcuz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcux;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcux;)Lcom/google/android/gms/internal/ads/zzcuz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>(Lcom/google/android/gms/internal/ads/zzcux;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcux;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcux;->zzb()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcuz;->zzd(Lcom/google/android/gms/internal/ads/zzcux;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuz;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcuz;->zzd(Lcom/google/android/gms/internal/ads/zzcux;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
