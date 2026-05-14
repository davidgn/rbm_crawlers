.class public final Lcom/google/android/gms/internal/ads/zzbcj;
.super Lcom/google/android/gms/internal/ads/zzbcp;
.source "SourceFile"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzbbj;

.field private zzi:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;IILcom/google/android/gms/internal/ads/zzbbj;)V
    .locals 7

    const-string v3, "gfLiyhD2OvLSOj6bwf+kcmK11rwQ90aeBshxHD6xXgk="

    const/16 v6, 0x35

    const-string v2, "CX4J+2yEJ2HtJzNjBSAFoPZxV3S124qFqsrwrEik3kHdsHRX3oIIB4d/zi0EQ0fu"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbcp;-><init>(Lcom/google/android/gms/internal/ads/zzbbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzh:Lcom/google/android/gms/internal/ads/zzbbj;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzbbj;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzi:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzh:Lcom/google/android/gms/internal/ads/zzbbj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zzd:Lcom/google/android/gms/internal/ads/zzaww;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbcp;->zze:Ljava/lang/reflect/Method;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbcj;->zzi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaww;->zzH(J)Lcom/google/android/gms/internal/ads/zzaww;

    :cond_0
    return-void
.end method
