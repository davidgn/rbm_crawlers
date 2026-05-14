.class public final Lcom/google/android/gms/internal/ads/zzgec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgec;->zza:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzieo;Lcom/google/android/gms/internal/ads/zzgsa;)Lcom/google/android/gms/internal/ads/zzgdt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzgdz;-><init>(Lcom/google/android/gms/internal/ads/zzieo;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgec;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzgeb;-><init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgea;Lcom/google/android/gms/internal/ads/zzgsa;)V

    return-object v0
.end method

.method public final zzb(Ljava/io/File;[BLcom/google/android/gms/internal/ads/zzgsa;)Lcom/google/android/gms/internal/ads/zzgdt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdv;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzgdv;-><init>([B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgec;->zza:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzgeb;-><init>(Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgea;Lcom/google/android/gms/internal/ads/zzgsa;)V

    return-object v0
.end method
