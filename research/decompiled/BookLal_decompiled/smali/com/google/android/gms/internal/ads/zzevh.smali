.class public final Lcom/google/android/gms/internal/ads/zzevh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevh;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzevh;->zze:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzg:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzh:Lcom/google/android/gms/internal/ads/zzimd;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzi:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzevh;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/ads/zzevh;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzevh;-><init>(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v10
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmx;->zza()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbl;->zza()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcyo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zze:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfll;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbn;->zza()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzg:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdyl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzh:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzczc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevh;->zzi:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzevf;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzevf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzfll;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzdyl;Lcom/google/android/gms/internal/ads/zzczc;J)V

    return-object v0
.end method
