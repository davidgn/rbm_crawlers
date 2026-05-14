.class public final Lcom/google/android/gms/internal/ads/zzieh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzieg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzieg;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzieg;-><init>(Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzieh;->zza:Lcom/google/android/gms/internal/ads/zzieg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzieh;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzieh;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzieh;-><init>(Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzici;Lcom/google/android/gms/internal/ads/zzieg;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzieg;->zza:Lcom/google/android/gms/internal/ads/zzigg;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzics;->zzf(Lcom/google/android/gms/internal/ads/zzici;Lcom/google/android/gms/internal/ads/zzigg;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzieg;->zzc:Lcom/google/android/gms/internal/ads/zzigg;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzics;->zzf(Lcom/google/android/gms/internal/ads/zzici;Lcom/google/android/gms/internal/ads/zzigg;ILjava/lang/Object;)V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzieg;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzieg;->zza:Lcom/google/android/gms/internal/ads/zzigg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzieg;->zzc:Lcom/google/android/gms/internal/ads/zzigg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzics;->zzh(Lcom/google/android/gms/internal/ads/zzigg;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzics;->zzh(Lcom/google/android/gms/internal/ads/zzigg;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzieh;->zza:Lcom/google/android/gms/internal/ads/zzieg;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result p1

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzieh;->zzc(Lcom/google/android/gms/internal/ads/zzieg;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2, p2, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result p1

    return p1
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzieg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzieh;->zza:Lcom/google/android/gms/internal/ads/zzieg;

    return-object v0
.end method
