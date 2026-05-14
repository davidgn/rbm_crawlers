.class final synthetic Lcom/google/android/gms/internal/ads/zzfqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfqw;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Lcom/google/android/gms/internal/ads/zzfqw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzc:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfqw;->zzb(IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)LN2/o;

    move-result-object p1

    return-object p1
.end method
