.class public final Lcom/google/android/gms/internal/ads/zzaur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final synthetic zza:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaur;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I[I)Lcom/google/android/gms/internal/ads/zzauo;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaur;->zza:I

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaup;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(I[I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzauq;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzauq;-><init>(Lcom/google/android/gms/internal/ads/zzaus;)V

    return-object p1
.end method
