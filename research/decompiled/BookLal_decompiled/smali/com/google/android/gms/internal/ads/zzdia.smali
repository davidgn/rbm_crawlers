.class public final Lcom/google/android/gms/internal/ads/zzdia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdhw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdia;->zza:Lcom/google/android/gms/internal/ads/zzdhw;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdia;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdhw;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zza:Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhw;->zzn()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
