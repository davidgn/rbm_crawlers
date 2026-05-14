.class public final Lcom/google/android/gms/internal/ads/zzanv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamv;


# static fields
.field static final zza:Ljava/util/regex/Pattern;

.field static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Ljava/util/regex/Pattern;

.field private static final zze:Ljava/util/regex/Pattern;

.field private static final zzf:Ljava/util/regex/Pattern;

.field private static final zzg:Ljava/util/regex/Pattern;

.field private static final zzh:Lcom/google/android/gms/internal/ads/zzant;


# instance fields
.field private final zzi:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzc:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzd:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zze:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zza:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzf:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzg:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzant;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzant;-><init>(FII)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzh:Lcom/google/android/gms/internal/ads/zzant;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzi:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzc(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const-string v0, "\\s+"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static zzd(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_24

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, -0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "multiRowAlign"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "backgroundColor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v2

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "rubyPosition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "textEmphasis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v8, "fontSize"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v10

    goto/16 :goto_2

    :sswitch_5
    const-string v8, "textCombine"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v8, "shear"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v8, "color"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v13

    goto/16 :goto_2

    :sswitch_8
    const-string v8, "ruby"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_9
    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_2

    :sswitch_a
    const-string v8, "fontWeight"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_2

    :sswitch_b
    const-string v8, "textDecoration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc

    goto :goto_2

    :sswitch_c
    const-string v8, "origin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xf

    goto :goto_2

    :sswitch_d
    const-string v8, "textAlign"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    goto :goto_2

    :sswitch_e
    const-string v8, "fontFamily"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v12

    goto :goto_2

    :sswitch_f
    const-string v8, "extent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x10

    goto :goto_2

    :sswitch_10
    const-string v8, "fontStyle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    move v7, v11

    :goto_2
    const/4 v8, 0x0

    const-string v14, "TtmlParser"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zza:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v9, :cond_1

    const-string v0, "Invalid value for shear: "

    invoke-static {v6, v0, v14}, Lcom/google/android/gms/ads/internal/util/client/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v8, -0x3d380000    # -100.0f

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Failed to parse shear: "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzany;->zzp(F)Lcom/google/android/gms/internal/ads/zzany;

    move-object v0, v7

    goto/16 :goto_d

    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzanr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzanr;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzF(Lcom/google/android/gms/internal/ads/zzanr;)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_5

    :sswitch_11
    const-string v7, "linethrough"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v4

    goto :goto_5

    :sswitch_12
    const-string v7, "nolinethrough"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v2

    goto :goto_5

    :sswitch_13
    const-string v7, "underline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v13

    goto :goto_5

    :sswitch_14
    const-string v7, "nounderline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v11, v12

    :cond_3
    :goto_5
    if-eqz v11, :cond_7

    if-eq v11, v2, :cond_6

    if-eq v11, v13, :cond_5

    if-eq v11, v12, :cond_4

    goto/16 :goto_d

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zze(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zze(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zzc(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zzc(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x5305c081

    if-eq v7, v8, :cond_9

    const v8, 0x58705dc

    if-eq v7, v8, :cond_8

    goto :goto_6

    :cond_8
    const-string v7, "after"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v11, v2

    goto :goto_6

    :cond_9
    const-string v7, "before"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v11, v4

    :cond_a
    :goto_6
    if-eqz v11, :cond_c

    if-eq v11, v2, :cond_b

    goto/16 :goto_d

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzany;->zzw(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zzw(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_6
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    goto :goto_7

    :sswitch_15
    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v12

    goto :goto_7

    :sswitch_16
    const-string v7, "base"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v2

    goto :goto_7

    :sswitch_17
    const-string v7, "textContainer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v10

    goto :goto_7

    :sswitch_18
    const-string v7, "delimiter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v9

    goto :goto_7

    :sswitch_19
    const-string v7, "container"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v4

    goto :goto_7

    :sswitch_1a
    const-string v7, "baseContainer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v11, v13

    :cond_d
    :goto_7
    if-eqz v11, :cond_11

    if-eq v11, v2, :cond_10

    if-eq v11, v13, :cond_10

    if-eq v11, v12, :cond_f

    if-eq v11, v10, :cond_f

    if-eq v11, v9, :cond_e

    goto/16 :goto_d

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzany;->zzu(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzany;->zzu(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzany;->zzu(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zzu(I)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_7
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x179a1

    if-eq v7, v8, :cond_13

    const v8, 0x33af38

    if-eq v7, v8, :cond_12

    goto :goto_8

    :cond_12
    const-string v7, "none"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v11, v4

    goto :goto_8

    :cond_13
    const-string v7, "all"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v11, v2

    :cond_14
    :goto_8
    if-eqz v11, :cond_16

    if-eq v11, v2, :cond_15

    goto/16 :goto_d

    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zzD(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zzD(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzanv;->zzf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzB(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzanv;->zzf(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzz(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    const-string v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzg(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    const-string v7, "bold"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzf(Z)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :pswitch_c
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    const-string v7, "\\s+"

    const-string v9, "Invalid number of entries for fontSize: "

    const-string v10, "."

    const-string v15, "Invalid expression for fontSize: \'"

    const-string v4, "\'."

    const-string v8, "Invalid unit for fontSize: \'"

    sget-object v16, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    if-ne v11, v2, :cond_17

    sget-object v7, Lcom/google/android/gms/internal/ads/zzanv;->zze:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    goto :goto_9

    :cond_17
    if-ne v11, v13, :cond_22

    sget-object v9, Lcom/google/android/gms/internal/ads/zzanv;->zze:Ljava/util/regex/Pattern;

    aget-object v7, v7, v2

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v11, 0x25

    if-eq v10, v11, :cond_1a

    const/16 v11, 0xca8

    if-eq v10, v11, :cond_19

    const/16 v11, 0xe08

    if-eq v10, v11, :cond_18

    goto :goto_a

    :cond_18
    const-string v10, "px"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v11, 0x0

    goto :goto_b

    :cond_19
    const-string v10, "em"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    move v11, v2

    goto :goto_b

    :cond_1a
    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    move v11, v13

    goto :goto_b

    :cond_1b
    :goto_a
    const/4 v11, -0x1

    :goto_b
    if-eqz v11, :cond_1e

    if-eq v11, v2, :cond_1d

    if-ne v11, v13, :cond_1c

    :try_start_2
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzany;->zzH(I)Lcom/google/android/gms/internal/ads/zzany;

    goto :goto_c

    :cond_1c
    new-instance v7, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1d
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzany;->zzH(I)Lcom/google/android/gms/internal/ads/zzany;

    goto :goto_c

    :cond_1e
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzany;->zzH(I)Lcom/google/android/gms/internal/ads/zzany;

    :goto_c
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zzG(F)Lcom/google/android/gms/internal/ads/zzany;

    goto/16 :goto_d

    :cond_1f
    const/4 v4, 0x0

    throw v4

    :cond_20
    const/4 v4, 0x0

    throw v4

    :cond_21
    new-instance v7, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x24

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_22
    new-instance v4, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string v4, "Failed parsing fontSize value: "

    invoke-static {v6, v4, v14}, Lcom/google/android/gms/ads/internal/util/client/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzany;

    goto :goto_d

    :pswitch_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    :try_start_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zzk(I)Lcom/google/android/gms/internal/ads/zzany;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_d

    :catch_2
    const-string v4, "Failed parsing color value: "

    invoke-static {v6, v4, v14}, Lcom/google/android/gms/ads/internal/util/client/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    :try_start_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzany;->zzn(I)Lcom/google/android/gms/internal/ads/zzany;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_d

    :catch_3
    const-string v4, "Failed parsing background value: "

    invoke-static {v6, v4, v14}, Lcom/google/android/gms/ads/internal/util/client/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_10
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "style"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzany;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzany;

    :cond_23
    :goto_d
    add-int/2addr v5, v2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_24
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_10
        -0x4cd540d6 -> :sswitch_f
        -0x48ff636d -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3c1e50da -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_14
        -0x3d363934 -> :sswitch_13
        0x36723ff0 -> :sswitch_12
        0x641ec051 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1a
        -0x187eb37f -> :sswitch_19
        -0xeee99f9 -> :sswitch_18
        -0x81c562c -> :sswitch_17
        0x2e06d1 -> :sswitch_16
        0x36452d -> :sswitch_15
    .end sparse-switch
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzany;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzany;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static zzf(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)J
    .locals 13

    sget-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v7, v8

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v9, v9

    add-double/2addr v7, v9

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v5

    :goto_0
    add-double/2addr v7, v9

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzant;->zza:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v5

    :goto_1
    add-double/2addr v7, v11

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    int-to-double v4, p0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzant;->zza:F

    float-to-double p0, p0

    div-double/2addr v0, v4

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v7, v9

    add-double/2addr v7, v5

    mul-double/2addr v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzanv;->zzd:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v4

    goto :goto_3

    :cond_5
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v6

    goto :goto_3

    :cond_7
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v8

    goto :goto_3

    :cond_8
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    :cond_b
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    int-to-double p0, p0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_c
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzant;->zza:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_4

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    :goto_5
    mul-double/2addr v9, p0

    goto :goto_6

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    goto :goto_5

    :goto_6
    mul-double/2addr v9, v2

    double-to-long p0, v9

    return-wide p0

    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamr;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzamu;Lcom/google/android/gms/internal/ads/zzds;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanv;->zzb([BII)Lcom/google/android/gms/internal/ads/zzamq;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzamp;->zza(Lcom/google/android/gms/internal/ads/zzamq;Lcom/google/android/gms/internal/ads/zzamu;Lcom/google/android/gms/internal/ads/zzds;)V

    return-void
.end method

.method public final zzb([BII)Lcom/google/android/gms/internal/ads/zzamq;
    .locals 48

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, "http://www.w3.org/ns/ttml#parameter"

    const-string v8, "Ignoring unsupported tag: "

    move-object/from16 v9, p0

    :try_start_0
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzanv;->zzi:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzanw;

    const-string v16, ""

    const v23, -0x800001

    const/high16 v24, -0x80000000

    move-object v14, v15

    move-object v2, v15

    move-object/from16 v15, v16

    move/from16 v16, v23

    move/from16 v17, v23

    move/from16 v18, v24

    move/from16 v19, v24

    move/from16 v20, v23

    move/from16 v21, v23

    move/from16 v22, v24

    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/internal/ads/zzanw;-><init>(Ljava/lang/String;FFIIFFIFI)V

    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v3, p3

    invoke-direct {v2, v14, v15, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v3, 0x0

    invoke-interface {v10, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    sget-object v15, Lcom/google/android/gms/internal/ads/zzanv;->zzh:Lcom/google/android/gms/internal/ads/zzant;

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object/from16 v19, v3

    move-object/from16 v22, v19

    move-object/from16 v21, v15

    move/from16 v23, v17

    move/from16 v20, v18

    :goto_0
    if-eq v14, v5, :cond_5a

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v1, v24

    check-cast v1, Lcom/google/android/gms/internal/ads/zzans;

    const/4 v3, 0x2

    if-nez v20, :cond_58

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "tt"

    if-ne v14, v3, :cond_53

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "extent"

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v26, v6

    const-string v6, "TtmlParser"

    if-eqz v14, :cond_f

    :try_start_2
    const-string v14, "frameRate"

    invoke-interface {v10, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_39

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3a

    :cond_0
    const/16 v14, 0x1e

    :goto_1
    const-string v9, "frameRateMultiplier"

    invoke-interface {v10, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v27, v2

    const-string v2, " "

    sget-object v21, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    move-object/from16 v28, v1

    const/4 v1, -0x1

    invoke-virtual {v9, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    move/from16 v1, v18

    :goto_2
    const-string v9, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/zzgsj;->zzb(ZLjava/lang/Object;)V

    aget-object v1, v2, v18

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/4 v9, 0x1

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_3

    :cond_2
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move/from16 v1, v25

    :goto_3
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    const-string v9, "subFrameRate"

    invoke-interface {v10, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_3
    iget v9, v15, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    move/from16 v21, v9

    const-string v9, "tickRate"

    invoke-interface {v10, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v29, v15

    goto :goto_4

    :cond_4
    move-object/from16 v29, v15

    move/from16 v9, v21

    :goto_4
    new-instance v15, Lcom/google/android/gms/internal/ads/zzant;

    int-to-float v14, v14

    mul-float/2addr v14, v1

    invoke-direct {v15, v14, v2, v9}, Lcom/google/android/gms/internal/ads/zzant;-><init>(FII)V

    const-string v1, "cellResolution"

    const-string v2, "Ignoring malformed cell resolution: "

    invoke-interface {v10, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_5
    move-object/from16 v30, v7

    move-object/from16 v21, v15

    :goto_6
    move/from16 v23, v17

    goto/16 :goto_a

    :cond_5
    sget-object v9, Lcom/google/android/gms/internal/ads/zzanv;->zzg:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_6
    const/4 v14, 0x1

    :try_start_3
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v30, v7

    const/4 v7, 0x2

    :try_start_4
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v14, :cond_8

    if-eqz v7, :cond_7

    move-object/from16 v21, v15

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v21, v15

    move/from16 v7, v18

    move v9, v7

    goto :goto_7

    :cond_8
    move-object/from16 v21, v15

    move/from16 v9, v18

    :goto_7
    :try_start_5
    const-string v15, "Invalid cell resolution %s %s"

    invoke-static {v9, v15, v14, v7}, Lcom/google/android/gms/internal/ads/zzgsj;->zzg(ZLjava/lang/String;II)V

    move/from16 v23, v7

    goto :goto_a

    :catch_2
    :goto_8
    move-object/from16 v21, v15

    goto :goto_9

    :cond_9
    move-object/from16 v21, v15

    const/4 v7, 0x0

    throw v7

    :catch_3
    move-object/from16 v30, v7

    goto :goto_8

    :cond_a
    move-object/from16 v30, v7

    move-object/from16 v21, v15

    const/4 v7, 0x0

    throw v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_4
    :goto_9
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_a
    const-string v1, "Ignoring malformed tts extent: "

    const-string v2, "Ignoring non-pixel tts extent: "

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    :goto_b
    const/16 v22, 0x0

    goto :goto_c

    :cond_b
    sget-object v9, Lcom/google/android/gms/internal/ads/zzanv;->zzf:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    :cond_c
    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-instance v14, Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {v14, v2, v9}, Lcom/google/android/gms/internal/ads/zzanu;-><init>(II)V

    move-object/from16 v22, v14

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    throw v2

    :cond_e
    const/4 v2, 0x0

    throw v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_5
    :try_start_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v7, v23

    goto :goto_d

    :cond_f
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v30, v7

    move-object/from16 v29, v15

    goto :goto_c

    :goto_d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v9, "image"

    const-string v14, "metadata"

    const-string v15, "region"

    move-object/from16 v21, v1

    const-string v1, "head"

    move-object/from16 v31, v13

    const-string v13, "style"

    if-nez v4, :cond_11

    :try_start_9
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "body"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "div"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "p"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "span"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "br"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "styling"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "layout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "information"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_f

    :cond_10
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v2

    move/from16 v23, v7

    move-object/from16 v32, v8

    move-object v7, v12

    move-object/from16 v6, v27

    move-object/from16 v15, v31

    :goto_e
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v20, 0x1

    goto/16 :goto_38

    :cond_11
    :goto_f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :goto_10
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzany;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzany;-><init>()V

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/zzanv;->zzd(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v5

    if-eqz v4, :cond_12

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzc(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v32, v8

    array-length v8, v4

    move-object/from16 v22, v1

    move/from16 v1, v18

    :goto_11
    if-ge v1, v8, :cond_13

    move/from16 v23, v8

    aget-object v8, v4, v1

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzany;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzany;->zzr(Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    const/4 v8, 0x1

    add-int/2addr v1, v8

    move/from16 v8, v23

    goto :goto_11

    :cond_12
    move-object/from16 v22, v1

    move-object/from16 v32, v8

    :cond_13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzany;->zzt()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v11, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move v1, v7

    move-object v8, v9

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v23, v15

    move-object/from16 v4, v22

    move-object/from16 v15, v31

    goto/16 :goto_23

    :cond_15
    move-object/from16 v22, v1

    move-object/from16 v32, v8

    invoke-static {v10, v15}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "id"

    if-eqz v1, :cond_38

    :try_start_a
    const-string v1, "Ignoring region with malformed origin: "

    const-string v5, "Ignoring region with malformed extent: "

    const-string v8, "Ignoring region with unsupported origin: "

    move-object/from16 v23, v15

    const-string v15, "Ignoring region with missing tts:extent: "

    move-object/from16 v33, v9

    const-string v9, "Ignoring region with unsupported extent: "

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_16

    move v1, v7

    move-object/from16 v46, v12

    move-object/from16 v45, v14

    :goto_12
    const/4 v4, 0x0

    goto/16 :goto_1e

    :cond_16
    const-string v4, "origin"

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move-object/from16 p2, v4

    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzany;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzany;->zzL()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_17
    move-object/from16 p2, v4

    :cond_18
    move-object/from16 v4, p2

    :goto_13
    const/high16 v28, 0x42c80000    # 100.0f

    if-eqz v4, :cond_20

    move-object/from16 v45, v14

    sget-object v14, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    move-object/from16 v46, v12

    sget-object v12, Lcom/google/android/gms/internal/ads/zzanv;->zzf:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v34
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v34, :cond_1b

    move/from16 v47, v7

    const/4 v7, 0x1

    :try_start_b
    invoke-virtual {v14, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    div-float v7, v7, v28

    const/4 v8, 0x2

    invoke-virtual {v14, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float v1, v1, v28

    :goto_14
    move/from16 v36, v7

    goto :goto_16

    :cond_19
    const/4 v5, 0x0

    throw v5

    :cond_1a
    const/4 v5, 0x0

    throw v5
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_6
    :try_start_c
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    move/from16 v1, v47

    goto :goto_12

    :cond_1b
    move/from16 v47, v7

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1f

    if-nez v2, :cond_1c

    invoke-virtual {v15, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_15

    :cond_1c
    const/4 v7, 0x1

    :try_start_d
    invoke-virtual {v12, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v12, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1d

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v7, v7

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzanu;->zza:I

    int-to-float v12, v12

    div-float/2addr v7, v12

    int-to-float v8, v8

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzanu;->zzb:I

    int-to-float v1, v1

    div-float v1, v8, v1

    goto :goto_14

    :cond_1d
    const/4 v5, 0x0

    throw v5

    :cond_1e
    const/4 v5, 0x0

    throw v5
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :catch_7
    :try_start_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_1f
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_20
    move/from16 v47, v7

    move-object/from16 v46, v12

    move-object/from16 v45, v14

    const/4 v1, 0x0

    const/16 v36, 0x0

    :goto_16
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_21

    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzany;

    if-eqz v8, :cond_21

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzany;->zzN()Ljava/lang/String;

    move-result-object v7

    :cond_21
    if-eqz v7, :cond_29

    sget-object v8, Lcom/google/android/gms/internal/ads/zzanv;->zzb:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    sget-object v12, Lcom/google/android/gms/internal/ads/zzanv;->zzf:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v12, :cond_24

    const/4 v12, 0x1

    :try_start_f
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    div-float v7, v7, v28

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float v4, v4, v28

    move/from16 v41, v4

    move/from16 v40, v7

    goto :goto_17

    :cond_22
    const/4 v1, 0x0

    throw v1

    :cond_23
    const/4 v1, 0x0

    throw v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    :catch_8
    :try_start_10
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_24
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_28

    if-nez v2, :cond_25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_15

    :cond_25
    const/4 v8, 0x1

    :try_start_11
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_27

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v8, v8

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzanu;->zza:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v7, v7

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzanu;->zzb:I

    int-to-float v4, v4

    div-float/2addr v7, v4

    move/from16 v41, v7

    move/from16 v40, v8

    goto :goto_17

    :cond_26
    const/4 v1, 0x0

    throw v1

    :cond_27
    const/4 v1, 0x0

    throw v1
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :catch_9
    :try_start_12
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_28
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_29
    move/from16 v40, v25

    move/from16 v41, v40

    :goto_17
    const-string v4, "displayAlign"

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    const v7, -0x514d33ab

    if-eq v5, v7, :cond_2b

    const v7, 0x58705dc

    if-eq v5, v7, :cond_2a

    goto :goto_18

    :cond_2a
    const-string v5, "after"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_19

    :cond_2b
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move/from16 v4, v18

    goto :goto_19

    :cond_2c
    :goto_18
    const/4 v4, -0x1

    :goto_19
    if-eqz v4, :cond_2f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2e

    :cond_2d
    move/from16 v37, v1

    move/from16 v39, v18

    move/from16 v1, v47

    goto :goto_1a

    :cond_2e
    add-float v1, v1, v41

    move/from16 v37, v1

    move/from16 v1, v47

    const/16 v39, 0x2

    goto :goto_1a

    :cond_2f
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v41, v4

    add-float/2addr v4, v1

    move/from16 v37, v4

    move/from16 v1, v47

    const/16 v39, 0x1

    :goto_1a
    int-to-float v4, v1

    div-float v43, v25, v4

    :try_start_13
    const-string v4, "writingMode"

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgrs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    const/16 v7, 0xe6e

    if-eq v5, v7, :cond_32

    const v7, 0x363874

    if-eq v5, v7, :cond_31

    const v7, 0x363928

    if-eq v5, v7, :cond_30

    goto :goto_1b

    :cond_30
    const-string v5, "tbrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x2

    goto :goto_1c

    :cond_31
    const-string v5, "tblr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x1

    goto :goto_1c

    :cond_32
    const-string v5, "tb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    move/from16 v4, v18

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v4, -0x1

    :goto_1c
    if-eqz v4, :cond_36

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    const/4 v5, 0x2

    if-eq v4, v5, :cond_35

    :cond_34
    const/high16 v44, -0x80000000

    goto :goto_1d

    :cond_35
    const/16 v44, 0x1

    goto :goto_1d

    :cond_36
    const/16 v44, 0x2

    :goto_1d
    :try_start_14
    new-instance v4, Lcom/google/android/gms/internal/ads/zzanw;

    const/16 v38, 0x0

    const/16 v42, 0x1

    move-object/from16 v34, v4

    invoke-direct/range {v34 .. v44}, Lcom/google/android/gms/internal/ads/zzanw;-><init>(Ljava/lang/String;FFIIFFIFI)V

    :goto_1e
    if-eqz v4, :cond_37

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzanw;->zza:Ljava/lang/String;

    move-object/from16 v7, v46

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    move-object/from16 v4, v22

    move-object/from16 v15, v31

    move-object/from16 v8, v33

    move-object/from16 v5, v45

    goto :goto_23

    :cond_37
    move-object/from16 v7, v46

    goto :goto_1f

    :cond_38
    move v1, v7

    move-object/from16 v33, v9

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v23, v15

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    :goto_20
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v8, v33

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzfs;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_39

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v15, v31

    invoke-virtual {v15, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_39
    move-object/from16 v15, v31

    :goto_21
    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/zzfs;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    :goto_22
    move-object/from16 v4, v22

    goto :goto_23

    :cond_3a
    move-object/from16 v33, v8

    move-object/from16 v31, v15

    goto :goto_20

    :cond_3b
    move-object/from16 v15, v31

    move-object/from16 v8, v33

    goto :goto_22

    :goto_23
    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzfs;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v9, :cond_3c

    move-object/from16 v4, v21

    move-object/from16 v6, v27

    goto/16 :goto_32

    :cond_3c
    move-object v14, v5

    move-object v12, v7

    move-object v9, v8

    move-object/from16 v31, v15

    move-object/from16 v15, v23

    move-object/from16 v8, v32

    move v7, v1

    move-object v1, v4

    goto/16 :goto_10

    :cond_3d
    move v1, v7

    move-object/from16 v32, v8

    move-object v7, v12

    move-object/from16 v23, v15

    move-object/from16 v15, v31

    :try_start_15
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzd(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v38
    :try_end_15
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_15 .. :try_end_15} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    move/from16 v8, v18

    move-object/from16 v40, v26

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v35, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x0

    const/16 v41, 0x0

    const-wide v42, -0x7fffffffffffffffL    # -4.9E-324

    :goto_24
    if-ge v8, v3, :cond_47

    :try_start_16
    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_16 .. :try_end_16} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    sparse-switch v14, :sswitch_data_0

    :cond_3e
    move-object/from16 v14, v23

    goto :goto_25

    :sswitch_0
    const-string v14, "backgroundImage"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    move-object/from16 v14, v23

    const/4 v9, 0x5

    goto :goto_26

    :sswitch_1
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    move-object/from16 v14, v23

    const/4 v9, 0x3

    goto :goto_26

    :sswitch_2
    const-string v14, "begin"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    move/from16 v9, v18

    move-object/from16 v14, v23

    goto :goto_26

    :sswitch_3
    const-string v14, "end"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    move-object/from16 v14, v23

    const/4 v9, 0x1

    goto :goto_26

    :sswitch_4
    const-string v14, "dur"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    move-object/from16 v14, v23

    const/4 v9, 0x2

    goto :goto_26

    :sswitch_5
    move-object/from16 v14, v23

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    const/4 v9, 0x4

    goto :goto_26

    :cond_3f
    :goto_25
    const/4 v9, -0x1

    :goto_26
    if-eqz v9, :cond_46

    const/4 v4, 0x1

    if-eq v9, v4, :cond_45

    const/4 v5, 0x2

    if-eq v9, v5, :cond_44

    const/4 v5, 0x3

    if-eq v9, v5, :cond_43

    const/4 v5, 0x4

    if-eq v9, v5, :cond_42

    const/4 v5, 0x5

    if-eq v9, v5, :cond_40

    goto :goto_27

    :cond_40
    :try_start_17
    const-string v9, "#"

    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v41, v9

    :cond_41
    :goto_27
    move-object/from16 v4, v21

    :goto_28
    const/4 v9, 0x1

    goto :goto_2b

    :catch_a
    move-exception v0

    move-object v3, v0

    move-object/from16 p3, v6

    move-object/from16 v4, v21

    :goto_29
    move-object/from16 v6, v27

    goto/16 :goto_36

    :cond_42
    const/4 v5, 0x5

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v40, v12

    goto :goto_27

    :cond_43
    const/4 v5, 0x5

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzanv;->zzc(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4
    :try_end_17
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_17 .. :try_end_17} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    if-lez v9, :cond_41

    move-object/from16 v39, v4

    goto :goto_27

    :cond_44
    move-object/from16 v4, v21

    const/4 v5, 0x5

    :try_start_18
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)J

    move-result-wide v42

    goto :goto_28

    :catch_b
    move-exception v0

    :goto_2a
    move-object v3, v0

    move-object/from16 p3, v6

    goto :goto_29

    :cond_45
    move-object/from16 v4, v21

    const/4 v5, 0x5

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)J

    move-result-wide v33

    goto :goto_28

    :cond_46
    move-object/from16 v4, v21

    const/4 v5, 0x5

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzant;)J

    move-result-wide v35

    goto :goto_28

    :goto_2b
    add-int/2addr v8, v9

    move-object/from16 v21, v4

    move-object/from16 v23, v14

    goto/16 :goto_24

    :catch_c
    move-exception v0

    move-object/from16 v4, v21

    const/4 v5, 0x5

    goto :goto_2a

    :cond_47
    move-object/from16 v4, v21

    const/4 v5, 0x5

    if-eqz v28, :cond_4b

    move-object/from16 v3, v28

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzans;->zzd:J
    :try_end_18
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_18 .. :try_end_18} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v22

    if-eqz v12, :cond_4a

    cmp-long v12, v35, v22

    if-eqz v12, :cond_48

    add-long v12, v35, v8

    goto :goto_2c

    :cond_48
    move-wide/from16 v12, v22

    :goto_2c
    cmp-long v14, v33, v22

    if-eqz v14, :cond_49

    add-long v33, v33, v8

    move-object v8, v3

    :goto_2d
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2e

    :cond_49
    move-object v8, v3

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2e

    :cond_4a
    move-object v8, v3

    move-wide/from16 v12, v35

    goto :goto_2d

    :cond_4b
    move-object/from16 v3, v28

    move-wide/from16 v12, v35

    const/4 v8, 0x0

    goto :goto_2d

    :goto_2e
    cmp-long v9, v33, v21

    if-nez v9, :cond_4f

    cmp-long v9, v42, v21

    if-eqz v9, :cond_4c

    add-long v42, v12, v42

    move-object/from16 p3, v6

    move-wide/from16 v36, v42

    goto :goto_30

    :cond_4c
    if-eqz v8, :cond_4e

    move-object/from16 p3, v6

    :try_start_19
    iget-wide v5, v8, Lcom/google/android/gms/internal/ads/zzans;->zze:J
    :try_end_19
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_19 .. :try_end_19} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    cmp-long v9, v5, v21

    if-eqz v9, :cond_4d

    move-wide/from16 v36, v5

    goto :goto_30

    :cond_4d
    :goto_2f
    move-wide/from16 v36, v21

    goto :goto_30

    :catch_d
    move-exception v0

    move-object v3, v0

    goto/16 :goto_29

    :cond_4e
    move-object/from16 p3, v6

    goto :goto_2f

    :cond_4f
    move-object/from16 p3, v6

    move-wide/from16 v36, v33

    :goto_30
    :try_start_1a
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v33

    move-wide/from16 v34, v12

    move-object/from16 v42, v8

    invoke-static/range {v33 .. v42}, Lcom/google/android/gms/internal/ads/zzans;->zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzany;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzans;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v5
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    move-object/from16 v6, v27

    :try_start_1b
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v3, :cond_50

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzans;->zzd(Lcom/google/android/gms/internal/ads/zzans;)V
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzamr; {:try_start_1b .. :try_end_1b} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    goto :goto_32

    :catch_e
    move-exception v0

    :goto_31
    move-object v3, v0

    goto :goto_36

    :cond_50
    :goto_32
    move/from16 v23, v1

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    :cond_51
    :goto_33
    const/4 v1, 0x1

    :cond_52
    :goto_34
    const/4 v2, -0x1

    goto/16 :goto_38

    :catch_f
    move-exception v0

    :goto_35
    move-object/from16 v6, v27

    goto :goto_31

    :catch_10
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v4, v21

    goto :goto_35

    :goto_36
    :try_start_1c
    const-string v5, "Suppressing parser error"

    move-object/from16 v8, p3

    invoke-static {v8, v5, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v23, v1

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    goto/16 :goto_e

    :cond_53
    move-object v3, v1

    move-object/from16 v26, v6

    move-object/from16 v30, v7

    move-object/from16 v32, v8

    move-object v7, v12

    move-object/from16 v29, v15

    const/4 v1, 0x4

    move-object v6, v2

    move-object v15, v13

    if-ne v14, v1, :cond_55

    if-eqz v3, :cond_54

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzans;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzans;->zzd(Lcom/google/android/gms/internal/ads/zzans;)V

    goto :goto_33

    :cond_54
    const/4 v1, 0x0

    throw v1

    :cond_55
    const/4 v1, 0x3

    if-ne v14, v1, :cond_51

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    new-instance v1, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzans;

    if-eqz v2, :cond_56

    invoke-direct {v1, v2, v11, v7, v15}, Lcom/google/android/gms/internal/ads/zzanz;-><init>(Lcom/google/android/gms/internal/ads/zzans;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v19, v1

    goto :goto_37

    :cond_56
    const/4 v1, 0x0

    throw v1

    :cond_57
    :goto_37
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_33

    :cond_58
    move v1, v3

    move-object/from16 v26, v6

    move-object/from16 v30, v7

    move-object/from16 v32, v8

    move-object v7, v12

    move-object/from16 v29, v15

    move-object v6, v2

    move-object v15, v13

    if-ne v14, v1, :cond_59

    const/4 v1, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_34

    :cond_59
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v14, v2, :cond_52

    const/4 v2, -0x1

    add-int/lit8 v20, v20, -0x1

    :goto_38
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    move-object/from16 v9, p0

    move v5, v1

    move-object v2, v6

    move-object v12, v7

    move-object v13, v15

    move-object/from16 v6, v26

    move-object/from16 v15, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v32

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5a
    if-eqz v19, :cond_5b

    return-object v19

    :cond_5b
    const/4 v1, 0x0

    throw v1
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    :goto_39
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method
