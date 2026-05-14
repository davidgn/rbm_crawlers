.class public final Lcom/google/android/gms/internal/ads/zzdbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdbm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbm;-><init>(Lcom/google/android/gms/internal/ads/zzdbg;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfjw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzc()Lcom/google/android/gms/internal/ads/zzfjw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzc()Lcom/google/android/gms/internal/ads/zzfjw;

    move-result-object v0

    return-object v0
.end method
