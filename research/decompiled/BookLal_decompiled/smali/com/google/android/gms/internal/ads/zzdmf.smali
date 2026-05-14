.class public final Lcom/google/android/gms/internal/ads/zzdmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdli;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzdli;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdli;)Lcom/google/android/gms/internal/ads/zzdmf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmf;-><init>(Lcom/google/android/gms/internal/ads/zzdli;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzdli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdli;->zzc()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
