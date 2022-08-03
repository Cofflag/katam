#include "mega_titan.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"

void sub_080EDC94(struct MegaTitan *);
void sub_080EDD0C(struct MegaTitan *);
void sub_080EE358(struct MegaTitan *);
void sub_080EE514(struct MegaTitan *);
void sub_080EE588(struct MegaTitan *);
void sub_080EEC24(struct MegaTitan *);
void sub_080EED48(struct MegaTitan *);
void sub_080EF010(struct MegaTitan *, u8);
void sub_080EF1A8(struct Object2 *);
void sub_080EF2A0(struct Object2 *);
void sub_080EF6E4(struct Object2 *);
void sub_080EF7D8(struct Object2 *);
void sub_080EFC18(struct Object2 *);
void sub_080EFD4C(struct Object2 *);
void sub_080EFE9C(struct Object2 *);
void sub_080F0410(struct Object2 *);
void sub_080F0474(struct Object2 *);
void sub_080F0554(struct Object2 *);
void sub_080F05CC(struct Object2 *);
void sub_080F097C(struct Object2 *);
void sub_080F09E4(struct Object2 *);
void sub_080F0CAC(struct Object2 *);
void sub_080F0D10(struct Object2 *);
void sub_080F0E44(struct Object2 *);
void sub_080F0EAC(struct Object2 *);
void sub_080F118C(struct Object2 *);
void sub_080F12A8(struct Object2 *);
void sub_080F12F8(struct Object2 *);
void sub_080F1400(struct MegaTitan *, u8);
void sub_080F1598(struct Object2 *);
void sub_080F1690(struct Object2 *);
void sub_080F1ABC(struct Object2 *);
void sub_080F1BB0(struct Object2 *);
void sub_080F1FD8(struct MegaTitan *, u8);
void sub_080F2BDC(struct MegaTitan *, u8);
void sub_080F37B0(struct MegaTitan *);
void sub_080F3974(struct Object2 *, u32, u16, u8);
void sub_080F3D28(struct MegaTitan *, u8);
void sub_080F4190(struct MegaTitan *);
void sub_080F4484(struct MegaTitan *, u8);
void sub_080F5640(struct MegaTitan *);
void sub_080F566C(struct MegaTitan *);
void sub_080F56A8(struct MegaTitan *);
void sub_080F5744(struct Object2 *);

extern void (*const gUnk_08357018[])(struct Object2 *);
extern void (*const gUnk_08357028[])(struct Object2 *);

void *CreateMegaTitan(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct MegaTitan), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct MegaTitan *tmp, *mt = TaskGetStructPtr(t, tmp);
    u8 unk65E;

    InitObject(&tmp->obj2, template, a2);
    mt->obj2.base.unkC |= 1;
    mt->obj2.base.flags |= 0x2000000;
    mt->obj2.base.flags |= 0x100;
    mt->obj2.base.flags &= ~0x4000000;
    mt->obj2.base.flags |= 0x200000;
    mt->unkC4 = 0;
    if (mt->obj2.base.x > mt->obj2.kirby3->base.base.base.x)
        mt->obj2.base.flags |= 1;
    else
        mt->obj2.base.flags &= ~1;
    mt->obj2.base.unk5C &= ~7;
    mt->obj2.base.unk5C |= 3;
    mt->obj2.base.unk5C |= 0x1080A0;
    sub_0803E2B0(&mt->obj2.base, -0xC, -0x14, 0xC, 0xA);
    sub_0803E308(&mt->obj2.base, -4, -0x10, 4, 6);
    ObjectInitSprite(&mt->obj2);
    mt->obj2.base.sprite.unk14 = 0x740;
    mt->obj2.unk9E = 0;
    mt->obj2.unk7C = sub_080F4190;
    unk65E = gCurLevelInfo[mt->obj2.base.unk56].unk65E;
    sub_08002A44(unk65E, sub_08002A0C(unk65E), 0);
    sub_08002A1C(unk65E, 0);
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == mt->obj2.base.roomId && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(unk65E));
    sub_080F5640(mt);
    return mt;
}

void sub_080EDAD0(struct MegaTitan *mt)
{
    mt->obj2.kirby3 = sub_0803D368(&mt->obj2.base);
    mt->obj2.base.flags |= 4;
    if (!(mt->obj2.kirby3->base.base.base.unkC & 0x8000)
        && mt->obj2.base.roomId == mt->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&mt->obj2.kirby3->base.base,
            mt->obj2.base.x, mt->obj2.base.y,
            mt->obj2.object->unk1A, mt->obj2.object->unk1C,
            mt->obj2.object->unk1E, mt->obj2.object->unk20))
    {
        mt->obj2.unkA4 = 0x10;
        mt->obj2.unkA6 = 0x10;
        mt->obj2.unkA8 = 0xEE;
        mt->obj2.unkAA = 0x98;
        mt->obj2.unk9F = 0;
        sub_080EDC94(mt);
        mt->obj2.base.counter = 0x5A;
        Macro_08100F18(&mt->obj2);
        sub_080EF010(mt, mt->obj2.object->subtype2);
        sub_080F1FD8(mt, mt->obj2.object->subtype2);
        sub_080F1400(mt, mt->obj2.object->subtype2);
        sub_080F2BDC(mt, mt->obj2.object->subtype2);
    }
}

void sub_080EDC94(struct MegaTitan *mt)
{
    u8 unk9F = mt->obj2.unk9F;
    u8 unk9E = mt->obj2.unk9E;

    if (mt->obj2.unk80 <= 0)
        sub_080EEC24(mt);
    else
    {
        ObjectSetFunc(mt, 0, sub_080EDD0C);
        mt->obj2.base.flags &= ~0x20;
        mt->obj2.base.flags |= 0x40;
        mt->obj2.base.flags &= ~0x4000000;
        mt->obj2.base.flags &= ~0x200;
        mt->obj2.base.counter = 0x168;
        mt->obj2.unk9F = unk9F;
        mt->obj2.unk9E = unk9E;
        if (!mt->obj2.unk9E)
            mt->obj2.unk83 = 1;
    }
}

void sub_080EDD0C(struct MegaTitan *mt)
{
    struct MegaTitan *mt2 = mt;

    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    if (mt->obj2.unk83 == 2 || mt->obj2.unk83 == 0)
        mt->obj2.base.flags |= 4;
    if (!mt2->unkC4)
    {
        if (mt->obj2.base.x > mt->obj2.kirby3->base.base.base.x)
            mt->obj2.base.flags |= 1;
        else
            mt->obj2.base.flags &= ~1;
        if (!--mt->obj2.base.counter)
        {
            if (mt->obj2.unk80 <= gUnk_08351530[0x13][gUnk_0203AD30 - 1] >> 1)
            {
                if (Rand16() & 1)
                    mt2->unkC4 = (Rand16() & 3) + 1;
                mt->obj2.base.counter = 0xB4;
            }
            else
            {
                if (Rand16() & 1)
                    mt2->unkC4 = (Rand16() & 1) + 1;
                mt->obj2.base.counter = 0xF0;
            }
        }
    }
    else
    {
        if (mt->obj2.base.x > 0x8000)
            mt->obj2.base.flags |= 1;
        else
            mt->obj2.base.flags &= ~1;
    }
    if (mt->obj2.unk9F)
    {
        if (mt->obj2.subtype || mt->obj2.unk80 < gUnk_08351530[0x13][gUnk_0203AD30 - 1] >> 1)
        {
            mt->obj2.base.xspeed += 4;
            if (mt->obj2.base.xspeed > 0x80)
                mt->obj2.base.xspeed = 0x80;
        }
        else
        {
            mt->obj2.base.xspeed += 1;
            if (mt->obj2.base.xspeed > 0x50)
                mt->obj2.base.xspeed = 0x50;
        }
    }
    else
    {
        if (mt->obj2.subtype || mt->obj2.unk80 < gUnk_08351530[0x13][gUnk_0203AD30 - 1] >> 1)
        {
            mt->obj2.base.xspeed -= 4;
            if (mt->obj2.base.xspeed < -0x80)
                mt->obj2.base.xspeed = -0x80;
        }
        else
        {
            mt->obj2.base.xspeed -= 1;
            if (mt->obj2.base.xspeed < -0x50)
                mt->obj2.base.xspeed = -0x50;
        }
    }
    if (mt->obj2.unk9E)
    {
        mt->obj2.base.yspeed -= 0x10;
        if (mt->obj2.base.yspeed < -0x160)
            mt->obj2.base.yspeed = -0x160;
    }
    else
    {
        mt->obj2.base.yspeed += 6;
        if (mt->obj2.base.yspeed > 0x120)
            mt->obj2.base.yspeed = 0x120;
    }
    if (mt->obj2.subtype || mt->obj2.unk80 < gUnk_08351530[0x13][gUnk_0203AD30 - 1] >> 1)
    {
        if (mt->obj2.base.x < 0x4400)
        {
            mt->obj2.unk9F = 1;
            mt->obj2.kirby3 = sub_0803D368(&mt->obj2.base);
        }
        if (mt->obj2.base.x > 0xC000)
        {
            mt->obj2.unk9F = 0;
            mt->obj2.kirby3 = sub_0803D368(&mt->obj2.base);
        }
    }
    else
    {
        if (mt->obj2.base.x < 0x3C00)
        {
            mt->obj2.unk9F = 1;
            mt->obj2.kirby3 = sub_0803D368(&mt->obj2.base);
        }
        if (mt->obj2.base.x > 0xC800)
        {
            mt->obj2.unk9F = 0;
            mt->obj2.kirby3 = sub_0803D368(&mt->obj2.base);
        }
    }
    if (mt->obj2.base.y < 0x3800 && mt->obj2.unk83 == 2)
    {
        mt->obj2.unk9E = 1;
        mt->obj2.unk83 = 3;
        mt->obj2.base.flags &= ~2;
    }
    if (mt->obj2.base.y > 0x4000 && mt->obj2.unk83 == 0)
    {
        mt->obj2.unk9E = 0;
        mt->obj2.unk83 = 1;
        mt->obj2.base.flags &= ~2;
        PlaySfx(&mt->obj2.base, 396);
    }
    if (mt->obj2.unk83 == 1)
    {
        if (mt->obj2.base.flags & 2)
        {
            mt->obj2.unk83 = 2;
            mt->obj2.base.flags &= ~2;
            sub_080F37B0(mt);
        }
    }
    else if (mt->obj2.unk83 == 3)
    {
        if (mt->obj2.base.flags & 2)
        {
            mt->obj2.unk83 = 0;
            mt->obj2.base.flags &= ~2;
        }
    }
}

void sub_080EE264(struct MegaTitan *mt)
{
    u8 unk9F = mt->obj2.unk9F;

    ObjectSetFunc(mt, 4, sub_080EE358);
    mt->obj2.base.xspeed = 0;
    mt->obj2.base.yspeed = 0;
    mt->obj2.unk98 = 0;
    sub_080F3974(&mt->obj2, 0x3C, 0x33C, 0x11);
    mt->obj2.base.flags |= 0x4000000;
    if (mt->obj2.subtype == 0)
        mt->obj2.base.flags |= 0x200;
    mt->obj2.base.counter = 0x24;
    mt->obj2.unk9F = unk9F;
    sub_0806FE64(3, &mt->obj2.base);
    PlaySfx(&mt->obj2.base, 399);
    sub_0809E79C(&mt->obj2);
}

void sub_080EE358(struct MegaTitan *mt)
{
    mt->obj2.base.flags |= 4;
    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    mt->obj2.base.flags |= 0x8000;
    mt->obj2.base.flags |= 0x1000000;
    if (!--mt->obj2.base.counter)
        sub_080EE514(mt);
}

void sub_080EE514(struct MegaTitan *mt)
{
    u8 unk9F = mt->obj2.unk9F;

    ObjectSetFunc(mt, 4, sub_080EE588);
    if (mt->obj2.base.x <= 0x2400)
        mt->obj2.base.xspeed = 0x1F0;
    if (mt->obj2.base.x >= 0xE000)
        mt->obj2.base.xspeed = -0x1F0;
    mt->obj2.base.yspeed = 0;
    mt->obj2.unk98 = 0;
    mt->obj2.unk80 -= 0xA;
    if (mt->obj2.unk80 <= 0)
        sub_080EEC24(mt);
    else
    {
        mt->obj2.base.counter = 4;
        mt->obj2.unk9F = unk9F;
    }
}

void sub_080EE588(struct MegaTitan *mt)
{
    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    mt->obj2.base.flags |= 0x8000;
    mt->obj2.base.flags |= 0x1000000;
    mt->obj2.base.flags |= 4;
    if (mt->obj2.base.xspeed < 0)
    {
        mt->obj2.base.xspeed += 2;
        if (mt->obj2.base.xspeed > 0)
            mt->obj2.base.xspeed = 0;
    }
    else
    {
        mt->obj2.base.xspeed -= 2;
        if (mt->obj2.base.xspeed < 0)
            mt->obj2.base.xspeed = 0;
    }
    if (!--mt->obj2.base.counter)
        sub_080F566C(mt);
}

void sub_080EE76C(struct MegaTitan *mt)
{
    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    mt->obj2.base.yspeed -= 0x40;
    if (mt->obj2.base.yspeed < -0x380)
        mt->obj2.base.yspeed = -0x380;
    if (mt->obj2.base.xspeed < 0)
    {
        mt->obj2.base.xspeed += 2;
        if (mt->obj2.base.xspeed > 0)
            mt->obj2.base.xspeed = 0;
    }
    else
    {
        mt->obj2.base.xspeed -= 2;
        if (mt->obj2.base.xspeed < 0)
            mt->obj2.base.xspeed = 0;
    }
    if (mt->obj2.base.unk62 & 4)
    {
        mt->obj2.base.yspeed = 0;
        mt->obj2.unk83 = 6;
        if (!mt->obj2.base.counter)
        {
            sub_0806FE64(3, &mt->obj2.base);
            sub_08089864(&mt->obj2.base, -0x10, 0xC, 1);
            sub_08089864(&mt->obj2.base, -0x10, 0xC, 0);
            mt->obj2.base.xspeed = 0;
            PlaySfx(&mt->obj2.base, 356);
        }
        if (++mt->obj2.base.counter > 0x18)
        {
            mt->obj2.base.flags &= ~0x4000000;
            sub_080EDC94(mt);
        }
    }
}

void sub_080EEA2C(struct MegaTitan *mt)
{
    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    mt->obj2.base.flags |= 0x8000;
    mt->obj2.base.flags |= 0x1000000;
    mt->obj2.base.flags |= 4;
    if (mt->obj2.base.xspeed < 0)
    {
        mt->obj2.base.xspeed += 2;
        if (mt->obj2.base.xspeed > 0)
            mt->obj2.base.xspeed = 0;
    }
    else
    {
        mt->obj2.base.xspeed -= 2;
        if (mt->obj2.base.xspeed < 0)
            mt->obj2.base.xspeed = 0;
    }
    if (!--mt->obj2.base.counter)
    {
        mt->obj2.base.flags &= ~0x8000;
        mt->obj2.base.flags &= ~0x1000000;
        sub_080EDC94(mt);
    }
}

void sub_080EEC24(struct MegaTitan *mt)
{
    struct MegaTitan *mt2 = mt;

    mt->obj2.unk9E = 0;
    mt->obj2.unk7C = 0;
    ObjectSetFunc(mt, 7, sub_080EED48);
    mt->obj2.base.unk68 = 0;
    mt->obj2.base.unk5C |= 0x80;
    mt->obj2.base.flags |= 0x200;
    mt->obj2.base.flags &= ~0x20;
    mt->obj2.base.flags |= 0x40;
    mt->obj2.base.xspeed = 0;
    mt->obj2.base.yspeed = 0;
    mt->obj2.base.flags &= ~2;
    mt->obj2.base.flags |= 0x200;
    mt->obj2.base.sprite.unk14 = 0x7C0;
    sub_08088528(&mt->obj2);
    PlaySfx(&mt->obj2.base, 380);
    mt2->obj2.base.counter = 0;
    if (mt2->obj2.base.flags & 1)
        mt2->obj2.base.xspeed = -mt2->obj2.base.xspeed;
    sub_080F12A8(mt->arms[0]);
    sub_080F12A8(mt->arms[1]);
    sub_080F12A8(mt->arms[2]);
    sub_080F12A8(mt->arms[3]);
}

void sub_080EED48(struct MegaTitan *mt)
{
    ObjXSomething(&mt->obj2);
    ObjYSomething(&mt->obj2);
    if (mt->obj2.unk83 == 7)
    {
        if (mt->obj2.base.flags & 2)
        {
            mt->obj2.unk83 = 8;
            sub_080F3D28(mt, 0);
            sub_080F3D28(mt, 1);
            sub_080F4484(mt, mt->obj2.object->subtype2);
            sub_0808AE30(&mt->obj2.base, 0, 0x2B4, 0);
        }
    }
    else
    {
        mt->obj2.base.flags |= 0x20;
        mt->obj2.base.flags &= ~0x40;
        if (mt->obj2.base.unk62 & 4)
        {
            mt->obj2.base.yspeed = 0;
            if (!mt->obj2.base.counter)
            {
                sub_0806FE64(3, &mt->obj2.base);
                sub_08089864(&mt->obj2.base, -0x10, 0xC, 1);
                sub_08089864(&mt->obj2.base, -0x10, 0xC, 0);
                mt->obj2.base.xspeed = 0;
                PlaySfx(&mt->obj2.base, 356);
            }
            if (mt->obj2.base.counter <= 60)
                ++mt->obj2.base.counter;
            else
                sub_080F56A8(mt);
        }
    }
}

void sub_080EF010(struct MegaTitan *mt, u8 a2)
{
    s32 x, y;
    struct Object2 *arm;
    struct MegaTitan *mt2 = mt;

    if (mt->obj2.base.flags & 1)
        x = mt->obj2.base.x >> 8;
    else
        x = mt->obj2.base.x >> 8;
    y = mt->obj2.base.y >> 8;
    arm = CreateObjTemplateAndObj(mt->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_TITAN_ARM_1,
        0, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    arm->base.parent = mt;
    mt2->arms[0] = arm;
}

void *CreateTitanArm1(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *arm = TaskGetStructPtr(t, arm);

    InitObject(arm, template, a2);
    arm->base.flags |= 0x40;
    arm->base.flags |= 1;
    arm->base.flags |= 0x200;
    arm->base.flags |= 0x2000000;
    arm->base.unk5C |= 0x1080A0;
    arm->base.flags |= 0x10000;
    arm->unk9E = 0;
    arm->unk7C = sub_080F5744;
    sub_0803E2B0(&arm->base, -4, -8, 8, 4);
    sub_0803E308(&arm->base, -4, -8, 8, -2);
    ObjectInitSprite(arm);
    sub_080EF1A8(arm);
    arm->base.counter = 180;
    return arm;
}

void sub_080EF1A8(struct Object2 *arm)
{
    bool32 r4 = FALSE;
    u8 unk83 = 0;

    arm->base.flags &= ~1;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
        unk83 = 0xC;
    if (arm->unk83 == 1)
    {
        arm->unk83 = 0xB;
        sub_080F3974(arm, 6, 0x33C, 0xA);
        sub_080F3974(arm, 6, 0x33C, 0xE);
        r4 = TRUE;
    }
    ObjectSetFunc(arm, 0xA, sub_080EF2A0);
    if (r4) arm->unk83 = 0xB;
    if (unk83) arm->unk83 = unk83;
    arm->base.sprite.unk14 = 0x6C0;
    if (((struct MegaTitan *)arm->base.parent)->unkC4)
        arm->base.counter = 8;
    else
    {
        switch (Rand16() & 7)
        {
        case 0:
            arm->base.counter = 0x78;
            break;
        case 1:
            arm->base.counter = 0x5A;
            break;
        case 3:
            arm->base.counter = 0x14;
            break;
        case 4:
            arm->base.counter = 0x2D;
            break;
        case 5:
            arm->base.counter = 0x5A;
            break;
        case 6:
            arm->base.counter = 0x2D;
            break;
        case 2:
        case 7:
            arm->base.counter = 0x3C;
            break;
        }
    }
}

void sub_080EF2A0(struct Object2 *arm)
{
    s32 lhs, rhs;
    struct MegaTitan *mt = arm->base.parent;
    s8 r2 = -0x16, ip = -0x18;

    arm->kirby3 = (void *)mt; // TODO: type of field
    arm->unkA0 = ((struct MegaTitan *)arm->kirby3)->obj2.base.x >> 8;
    arm->unkA2 = ((struct MegaTitan *)arm->kirby3)->obj2.base.y >> 8;
    if (arm->unk83 == 0xC)
    {
        if (abs(arm->unkA0 + r2 - (arm->base.x >> 8)) < 6
            && abs(arm->unkA2 + ip - (arm->base.y >> 8)) < 6)
            arm->unk83 = 0xA;
    }
    else if (arm->unk83 == 0xA)
    {
        if (mt->obj2.unk83 == 1)
        {
            arm->unk83 = 0xB;
            sub_080F3974(arm, 6, 0x33C, 0xA);
            sub_080F3974(arm, 6, 0x33C, 0xE);
        }
    }
    else
    {
        if (mt->obj2.unk83 == 3)
            arm->unk83 = 0xA;
    }
    arm->base.flags |= 4;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x1C0)
                arm->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x18;
            if (arm->base.yspeed < -0x1C0)
                arm->base.yspeed = -0x1C0;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x80;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x80;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0x240)
                arm->base.xspeed = 0x240;
            else if (arm->base.xspeed < -0x240)
                arm->base.xspeed = -0x240;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
                else if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
                else if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x180;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x180;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x20;
            if (arm->base.yspeed > 0x150)
                arm->base.yspeed = 0x150;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x20;
            if (arm->base.yspeed < -0x150)
                arm->base.yspeed = -0x150;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x100;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x100;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0xE0)
                arm->base.xspeed = 0xE0;
            else if (arm->base.xspeed < -0xE0)
                arm->base.xspeed = -0xE0;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
                else if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
                else if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x40;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x40;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    arm->base.flags &= ~1;
    if (mt->obj2.base.flags & 1)
        sub_080EF6E4(arm);
    else
    {
        if (arm->unk83 == 0x12)
        {
            if (!--arm->unk9F)
            {
                arm->unk83 = 0xA;
                if (arm->unk85 == 2 || arm->unk85 == 0xC)
                    arm->unk83 = 0xC;
                arm->unk85 = 0;
            }
        }
        else if (arm->unk83 != 0xC && !--arm->base.counter)
        {
            arm->unk83 = 0xA;
            sub_080EFC18(arm);
        }
    }
}

void sub_080EF6E4(struct Object2 *arm)
{
    bool32 r4 = FALSE;
    u8 unk83 = 0;

    arm->base.flags |= 1;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
        unk83 = 2;
    if (arm->unk83 == 0xB)
    {
        arm->unk83 = 1;
        sub_080F3974(arm, 4, 0x33C, 8);
        sub_080F3974(arm, 6, 0x33C, 0xC);
        r4 = TRUE;
    }
    ObjectSetFunc(arm, 0, sub_080EF7D8);
    if (r4) arm->unk83 = 1;
    if (unk83) arm->unk83 = unk83;
    arm->base.sprite.unk14 = 0x7C0;
    if (((struct MegaTitan *)arm->base.parent)->unkC4)
        arm->base.counter = 8;
    else
    {
        switch (Rand16() & 7)
        {
        case 0:
            arm->base.counter = 0x78;
            break;
        case 1:
            arm->base.counter = 0x5A;
            break;
        case 3:
            arm->base.counter = 0x14;
            break;
        case 4:
            arm->base.counter = 0x2D;
            break;
        case 5:
            arm->base.counter = 0x5A;
            break;
        case 6:
            arm->base.counter = 0x2D;
            break;
        case 2:
        case 7:
            arm->base.counter = 0x3C;
            break;
        }
    }
}

void sub_080EF7D8(struct Object2 *arm)
{
    s32 lhs, rhs;
    struct MegaTitan *mt = arm->base.parent;
    s8 r2 = -0x1C, ip = -0xC;

    arm->kirby3 = (void *)mt; // TODO: type of field
    arm->unkA0 = ((struct MegaTitan *)arm->kirby3)->obj2.base.x >> 8;
    arm->unkA2 = ((struct MegaTitan *)arm->kirby3)->obj2.base.y >> 8;
    if (arm->unk83 == 2)
    {
        if (abs(arm->unkA0 + r2 - (arm->base.x >> 8)) < 6
            && abs(arm->unkA2 + ip - (arm->base.y >> 8)) < 6)
            arm->unk83 = 0;
    }
    else if (arm->unk83 == 0)
    {
        if (mt->obj2.unk83 == 1)
        {
            arm->unk83 = 1;
            sub_080F3974(arm, 4, 0x33C, 8);
            sub_080F3974(arm, 6, 0x33C, 0xC);
        }
    }
    else
    {
        if (mt->obj2.unk83 == 3)
            arm->unk83 = 0;
    }
    arm->base.flags |= 4;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x1C0)
                arm->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x18;
            if (arm->base.yspeed < -0x1C0)
                arm->base.yspeed = -0x1C0;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x80;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x80;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0x240)
                arm->base.xspeed = 0x240;
            else if (arm->base.xspeed < -0x240)
                arm->base.xspeed = -0x240;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
                else if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
                else if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x180;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x180;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x20;
            if (arm->base.yspeed > 0x150)
                arm->base.yspeed = 0x150;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x20;
            if (arm->base.yspeed < -0x150)
                arm->base.yspeed = -0x150;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x100;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x100;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0xE0)
                arm->base.xspeed = 0xE0;
            else if (arm->base.xspeed < -0xE0)
                arm->base.xspeed = -0xE0;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
                else if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
                else if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x40;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x40;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    arm->base.flags |= 1;
    if (!(mt->obj2.base.flags & 1))
        sub_080EF1A8(arm);
    else
    {
        if (arm->unk83 == 8)
        {
            if (!--arm->unk9F)
            {
                arm->unk83 = 0;
                if (arm->unk85 == 2 || arm->unk85 == 0xC)
                    arm->unk83 = 2;
                arm->unk85 = 0;
            }
        }
        else if (arm->unk83 != 2 && !--arm->base.counter)
        {
            arm->unk83 = 0;
            sub_080EFC18(arm);
        }
    }
}

#define Macro_080EFC18(arm) \
    ((((arm)->unk83 == 0 || (arm)->unk83 == 1 || ((arm)->unk83 == 0xA || (arm)->unk83 == 0xB)) && (arm)->base.counter <= 1) \
        || (arm)->unk78 == sub_080F05CC)

void sub_080EFC18(struct Object2 *arm)
{
    struct MegaTitan *mt = arm->base.parent;

    if (mt->unkC4)
    {
        if (Macro_080EFC18(mt->arms[0])
            && Macro_080EFC18(mt->arms[1])
            && Macro_080EFC18(mt->arms[2])
            && Macro_080EFC18(mt->arms[3]))
            sub_080F0554(arm);
        else
            arm->base.counter = 1;
    }
    else
    {
        if (Rand16() & 1)
        {
            if (Rand16() & 1)
                sub_080F0410(arm);
            else
                sub_080F0CAC(arm);
        }
        else
            sub_080EFD4C(arm);
    }
}

void sub_080EFD4C(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080EFE9C);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->unk85 = arm->unk83;
    if (arm->unk83 > 9)
        arm->unk83 = 0xD;
    else
        arm->unk83 = 3;
    switch (gUnk_08351648[arm->type].unk14[arm->unk83].unk2)
    {
    case 0x24:
        sub_080F3974(arm, 0x10, 0x33C, 0x28);
        break;
    case 0x25:
        sub_080F3974(arm, 0x10, 0x33C, 0x29);
        break;
    case 0x26:
        sub_080F3974(arm, 0x10, 0x33C, 0x2A);
        break;
    case 0x27:
        sub_080F3974(arm, 0x10, 0x33C, 0x2B);
        break;
    }
    arm->base.flags &= ~0x20;
    arm->base.flags &= ~0x200;
    arm->base.flags |= 0x40;
    arm->base.counter = 0x18;
    arm->unk9F = 0;
    if (arm->base.sprite.unk1A == 1)
        arm->unk9E = Rand16() & 1;
    if (arm->base.sprite.unk1A == 2)
        arm->unk9E = (Rand16() & 1) + 2;
    if (arm->base.sprite.unk1A == 3)
        arm->unk9E = 4;
    if (arm->base.sprite.unk1A == 4)
        arm->unk9E = 5;
}

void sub_080EFE9C(struct Object2 *arm)
{
    arm->base.flags |= 4;
    if (arm->base.counter)
    {
        arm->base.xspeed = 0;
        arm->base.yspeed = 0;
        arm->base.objBase54 += (gUnk_0203AD40 & 2) * 2;
        arm->base.objBase55 += (gUnk_0203AD40 & 2) * 2;
        if (!--arm->base.counter)
            PlaySfx(&arm->base, 397);
    }
    else
    {
        switch (arm->unk9E)
        {
        case 0:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x262)
                    arm->base.xspeed = -0x262;
                else if (arm->base.xspeed > 0x262)
                    arm->base.xspeed = 0x262;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x262)
                    arm->base.xspeed = 0x262;
                else if (arm->base.xspeed < -0x262)
                    arm->base.xspeed = -0x262;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x94)
                arm->base.yspeed = 0x94;
            break;
        case 1:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x2E9)
                    arm->base.xspeed = -0x2E9;
                else if (arm->base.xspeed > 0x2E9)
                    arm->base.xspeed = 0x2E9;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x2E9)
                    arm->base.xspeed = 0x2E9;
                else if (arm->base.xspeed < -0x2E9)
                    arm->base.xspeed = -0x2E9;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x1B0)
                arm->base.yspeed = 0x1B0;
            break;
        case 2:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x352)
                    arm->base.xspeed = -0x352;
                else if (arm->base.xspeed > 0x352)
                    arm->base.xspeed = 0x352;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x352)
                    arm->base.xspeed = 0x352;
                else if (arm->base.xspeed < -0x352)
                    arm->base.xspeed = -0x352;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > -0x94)
                arm->base.yspeed = -0x94;
            break;
        case 3:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x341)
                    arm->base.xspeed = -0x341;
                else if (arm->base.xspeed > 0x341)
                    arm->base.xspeed = 0x341;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x341)
                    arm->base.xspeed = 0x341;
                else if (arm->base.xspeed < -0x341)
                    arm->base.xspeed = -0x341;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > -0xDE)
                arm->base.yspeed = -0xDE;
            break;
        case 4:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x262)
                    arm->base.xspeed = -0x262;
                else if (arm->base.xspeed > 0x262)
                    arm->base.xspeed = 0x262;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x262)
                    arm->base.xspeed = 0x262;
                else if (arm->base.xspeed < -0x262)
                    arm->base.xspeed = -0x262;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x262)
                arm->base.yspeed = 0x262;
            break;
        case 5:
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x18;
                if (arm->base.xspeed < -0x32A)
                    arm->base.xspeed = -0x32A;
                else if (arm->base.xspeed > 0x32A)
                    arm->base.xspeed = 0x32A;
            }
            else
            {
                arm->base.xspeed += 0x18;
                if (arm->base.xspeed > 0x32A)
                    arm->base.xspeed = 0x32A;
                else if (arm->base.xspeed < -0x32A)
                    arm->base.xspeed = -0x32A;
            }
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > -0xEF)
                arm->base.yspeed = -0xEF;
            break;
        }
        if (arm->base.unk62 & 0xD)
        {
            struct MegaTitan *mt = arm->base.parent;

            arm->base.xspeed = 0;
            arm->base.yspeed = 0;
            if (!arm->unk9F)
            {
                arm->unk83 = arm->unk85 + 2;
                arm->base.flags |= 0x200;
                sub_0806FE64(1, &arm->base);
                PlaySfx(&arm->base, 398);
                if (arm->base.unk62 & 3)
                    sub_080A8D18(&arm->base, 0, 0x10, 3, 0);
                else if (arm->base.unk62 & 8) 
                    sub_080A8D18(&arm->base, 0x10, 0, 1, arm->base.unk62 & 3);
                else if (arm->base.unk62 & 4)
                    sub_080A8C28(arm, 0x10, 0);
            }
            if (++arm->unk9F > 0x18)
            {
                if (!(mt->obj2.base.flags & 1))
                    gUnk_08357018[arm->type - OBJ_TITAN_ARM_1](arm);
                else
                    gUnk_08357028[arm->type - OBJ_TITAN_ARM_1](arm);
            }
        }
    }
}

void sub_080F0410(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F0474);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->unk85 = arm->unk83;
    if (arm->unk83 > 9)
        arm->unk83 = 0xE;
    else
        arm->unk83 = 4;
    arm->base.flags &= ~0x20;
    arm->base.flags |= 0x40;
    arm->base.counter = 4;
    arm->unk9F = 0;
    arm->kirby3 = sub_0803D368(&arm->base);
}

void sub_080F0474(struct Object2 *arm)
{
    arm->base.flags |= 4;
    if (arm->base.x > arm->kirby3->base.base.base.x)
        arm->base.flags |= 1;
    else
        arm->base.flags &= ~1;
    if (arm->base.y + 0x600 > arm->kirby3->base.base.base.y)
    {
        arm->base.yspeed += 0x10;
        if (arm->base.yspeed > 0x180)
            arm->base.yspeed = 0x180;
    }
    else if (arm->base.y + 0x600 < arm->kirby3->base.base.base.y)
    {
        arm->base.yspeed -= 0x10;
        if (arm->base.yspeed < -0x180)
            arm->base.yspeed = -0x180;
    }
    else
    {
        if (arm->base.yspeed < 0)
        {
            arm->base.yspeed += 0x20;
            if (arm->base.yspeed > 0)
                arm->base.yspeed = 0;
        }
        else
        {
            arm->base.yspeed -= 0x20;
            if (arm->base.yspeed < 0)
                arm->base.yspeed = 0;
        }
    }
    if (abs(arm->kirby3->base.base.base.y - arm->base.y) < 0x800
        && !--arm->base.counter)
        sub_080F097C(arm);
}

void sub_080F0554(struct Object2 *arm)
{
    struct MegaTitan *mt = arm->base.parent;

    ObjectSetFunc(arm, -1, sub_080F05CC);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->unk85 = arm->unk83;
    if (arm->unk83 > 9)
        arm->unk83 = 0xE;
    else
        arm->unk83 = 4;
    arm->base.flags &= ~0x20;
    arm->base.flags |= 0x40;
    arm->base.flags &= ~1;
    arm->base.flags |= mt->obj2.base.flags & 1;
    arm->base.counter = 0x20;
    arm->unk9F = 0;
    arm->kirby3 = sub_0803D368(&arm->base);
}

void sub_080F05CC(struct Object2 *arm)
{
    struct MegaTitan *mt = arm->base.parent;
    s16 r6, r4;
    s32 lhs, rhs;

    arm->base.flags |= 4;
    if (mt->unkC4)
    {
        switch (mt->unkC4)
        {
        default:
            switch (arm->type)
            {
            case OBJ_TITAN_ARM_1:
            default:
                r6 = 0x20;
                r4 = 0x28;
                break;
            case OBJ_TITAN_ARM_3:
                r6 = 0x30;
                r4 = 0x16;
                break;
            case OBJ_TITAN_ARM_4:
                r6 = 0x30;
                r4 = -0x16;
                break;
            case OBJ_TITAN_ARM_2:
                r6 = 0x20;
                r4 = -0x28;
                break;
            }
            break;
        case 2:
            switch (arm->type)
            {
            case OBJ_TITAN_ARM_1:
            default:
                r6 = 0x20;
                r4 = 0x30;
                break;
            case OBJ_TITAN_ARM_3:
                r6 = 0x30;
                r4 = 8;
                break;
            case OBJ_TITAN_ARM_4:
                r6 = 0x30;
                r4 = -8;
                break;
            case OBJ_TITAN_ARM_2:
                r6 = 0x20;
                r4 = -0x30;
                break;
            }
            break;
        case 3:
            arm->unkA2 = 0x58;
            switch (arm->type)
            {
            case OBJ_TITAN_ARM_1:
            default:
                r6 = 0x20;
                r4 = 0x3C;
                break;
            case OBJ_TITAN_ARM_3:
                r6 = 0x20;
                r4 = 0x18;
                break;
            case OBJ_TITAN_ARM_4:
                r6 = 0x20;
                r4 = -0x18;
                break;
            case OBJ_TITAN_ARM_2:
                r6 = 0x20;
                r4 = -0x3C;
                break;
            }
            break;
        case 4:
            arm->unkA2 = 0x58;
            switch (arm->type)
            {
            case OBJ_TITAN_ARM_1:
            default:
                r6 = 0x10;
                r4 = 0x14;
                break;
            case OBJ_TITAN_ARM_3:
                r6 = 0x10;
                r4 = 0x30;
                break;
            case OBJ_TITAN_ARM_4:
                r6 = 0x10;
                r4 = -0x30;
                break;
            case OBJ_TITAN_ARM_2:
                r6 = 0x10;
                r4 = -0x14;
                break;
            }
            break;
        }
        if (arm->base.flags & 1)
            r6 = -r6;
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + r4) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x80;
            if (arm->base.yspeed > 0x280)
                arm->base.yspeed = 0x280;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x80;
            if (arm->base.yspeed < -0x280)
                arm->base.yspeed = -0x280;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x180;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x180;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r6) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x80;
            if (arm->base.xspeed > 0x280)
                arm->base.xspeed = 0x280;
            else if (arm->base.xspeed < -0x280)
                arm->base.xspeed = -0x280;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x80;
                if (arm->base.xspeed < -0x280)
                    arm->base.xspeed = -0x280;
                else if (arm->base.xspeed > 0x280)
                    arm->base.xspeed = 0x280;
            }
            else
            {
                arm->base.xspeed += 0x80;
                if (arm->base.xspeed > 0x280)
                    arm->base.xspeed = 0x280;
                else if (arm->base.xspeed < -0x280)
                    arm->base.xspeed = -0x280;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x180;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x180;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    else
        arm->base.counter = 0;
    if (!arm->base.counter)
    {
        if (mt->unkC4)
        {
            bool32 sb = arm->base.flags & 1;

            mt->arms[0]->base.flags &= ~1;
            mt->arms[1]->base.flags &= ~1;
            mt->arms[2]->base.flags &= ~1;
            mt->arms[3]->base.flags &= ~1;
            if (mt->unkC4 != 4)
            {
                mt->arms[0]->base.flags |= sb;
                mt->arms[1]->base.flags |= sb;
                mt->arms[2]->base.flags |= sb;
                mt->arms[3]->base.flags |= sb;
            }
            else
            {
                mt->arms[0]->base.flags |= ~sb & 1;
                mt->arms[1]->base.flags |= ~sb & 1;
                mt->arms[2]->base.flags |= sb;
                mt->arms[3]->base.flags |= sb;
            }
            mt->unkC4 = 0;
        }
        sub_080F097C(arm);
        arm->base.counter = 0x20;
    }
    else if (mt->arms[0]->unk78 == sub_080F05CC
        && mt->arms[1]->unk78 == sub_080F05CC
        && mt->arms[2]->unk78 == sub_080F05CC
        && mt->arms[3]->unk78 == sub_080F05CC)
        --arm->base.counter;
}

void sub_080F097C(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F09E4);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    if (arm->unk83 > 9)
        arm->unk83 = 0xf;
    else
        arm->unk83 = 5;
    sub_080F3974(arm, 0xC, 0x33C, 0x30);
    arm->base.flags &= ~0x20;
    arm->base.flags &= ~0x200;
    arm->base.flags |= 0x40;
    arm->base.counter = 0x10;
    arm->unk9F = 0;
}

void sub_080F09E4(struct Object2 *arm)
{
    arm->base.flags |= 4;
    if (arm->base.counter)
    {
        arm->base.xspeed = 0;
        arm->base.yspeed = 0;
        arm->base.objBase54 += (gUnk_0203AD40 & 2) * 2;
        arm->base.objBase55 += (gUnk_0203AD40 & 2) * 2;
        if (!--arm->base.counter)
            PlaySfx(&arm->base, 397);
    }
    else
    {
        if (arm->base.flags & 1)
        {
            arm->base.xspeed -= 0x80;
            if (arm->base.xspeed < -0x300)
                arm->base.xspeed = -0x300;
            else if (arm->base.xspeed > 0x300)
                arm->base.xspeed = 0x300;
        }
        else
        {
            arm->base.xspeed += 0x80;
            if (arm->base.xspeed > 0x300)
                arm->base.xspeed = 0x300;
            else if (arm->base.xspeed < -0x300)
                arm->base.xspeed = -0x300;
        }
        if (arm->base.unk62 & 1)
        {
            struct MegaTitan *mt = arm->base.parent;

            arm->base.xspeed = 0;
            arm->base.yspeed = 0;
            if (!arm->unk9F)
            {
                if (arm->unk83 > 9)
                    arm->unk83 = 0xE;
                else
                    arm->unk83 = 4;
                arm->base.flags |= 0x200;
                sub_0806FE64(1, &arm->base);
                PlaySfx(&arm->base, 398);
                if (arm->base.unk62 & 3)
                    sub_080A8D18(&arm->base, 0, 0x10, 3, 0);
                else if (arm->base.unk62 & 8) 
                    sub_080A8D18(&arm->base, 0x10, 0, 1, arm->base.unk62 & 3);
                else if (arm->base.unk62 & 4)
                    sub_080A8C28(arm, 0x10, 0);
            }
            if (++arm->unk9F > 0x18)
            {
                arm->unk83 = arm->unk85 + 2;
                if (!(mt->obj2.base.flags & 1))
                    gUnk_08357018[arm->type - OBJ_TITAN_ARM_1](arm);
                else
                    gUnk_08357028[arm->type - OBJ_TITAN_ARM_1](arm);
            }
        }
    }
}

void sub_080F0CAC(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F0D10);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->unk85 = arm->unk83;
    if (arm->unk83 > 9)
        arm->unk83 = 0x10;
    else
        arm->unk83 = 6;
    arm->base.flags &= ~0x20;
    arm->base.flags |= 0x40;
    arm->base.counter = 4;
    arm->unk9F = 0;
    arm->kirby3 = sub_0803D368(&arm->base);
}

void sub_080F0D10(struct Object2 *arm)
{
    arm->base.flags |= 4;
    arm->base.yspeed += 0x10;
    if (arm->base.yspeed > 0xC0)
        arm->base.yspeed = 0xC0;
    if (arm->base.x - 0x600 > arm->kirby3->base.base.base.x)
    {
        if (arm->base.flags & 1)
        {
            arm->base.xspeed -= 0x10;
            if (arm->base.xspeed < -0x180)
                arm->base.xspeed = -0x180;
            else if (arm->base.xspeed > 0x180)
                arm->base.xspeed = 0x180;
        }
        else
        {
            arm->base.xspeed -= 0x10;
            if (arm->base.xspeed > 0x180)
                arm->base.xspeed = 0x180;
            else if (arm->base.xspeed < -0x180)
                arm->base.xspeed = -0x180;
        }
    }
    else if (arm->base.x + 0x600 < arm->kirby3->base.base.base.x)
    {
        if (arm->base.flags & 1)
        {
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed < -0x180)
                arm->base.xspeed = -0x180;
            else if (arm->base.xspeed > 0x180)
                arm->base.xspeed = 0x180;
        }
        else
        {
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0x180)
                arm->base.xspeed = 0x180;
            else if (arm->base.xspeed < -0x180)
                arm->base.xspeed = -0x180;
        }
    }
    else
    {
        if (arm->base.xspeed < 0)
        {
            arm->base.xspeed += 0x20;
            if (arm->base.xspeed > 0)
                arm->base.xspeed = 0;
        }
        else
        {
            arm->base.xspeed -= 0x20;
            if (arm->base.xspeed < 0)
                arm->base.xspeed = 0;
        }
    }
    if (abs(arm->kirby3->base.base.base.x - arm->base.x) < 0x800
        && arm->kirby3->base.base.base.y >= arm->base.y - 0x800
        && !--arm->base.counter)
        sub_080F0E44(arm);
}

void sub_080F0E44(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F0EAC);
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    if (arm->unk83 > 9)
        arm->unk83 = 0x11;
    else
        arm->unk83 = 7;
    sub_080F3974(arm, 0xC, 0x33C, 0x35);
    arm->base.flags &= ~0x20;
    arm->base.flags &= ~0x200;
    arm->base.flags |= 0x40;
    arm->base.counter = 0x10;
    arm->unk9F = 0;
}

void sub_080F0EAC(struct Object2 *arm)
{
    arm->base.flags |= 4;
    if (arm->base.counter)
    {
        arm->base.xspeed = 0;
        arm->base.yspeed = 0;
        arm->base.objBase54 += (gUnk_0203AD40 & 2) * 2;
        arm->base.objBase55 += (gUnk_0203AD40 & 2) * 2;
        if (!--arm->base.counter)
            PlaySfx(&arm->base, 397);
    }
    else
    {
        arm->base.yspeed -= 0x80;
        if (arm->base.yspeed < -0x300)
            arm->base.yspeed = -0x300;
        if (arm->base.unk62 & 4)
        {
            struct MegaTitan *mt = arm->base.parent;

            arm->base.xspeed = 0;
            arm->base.yspeed = 0;
            if (!arm->unk9F)
            {
                if (arm->unk83 > 9)
                    arm->unk83 = 0x10;
                else
                    arm->unk83 = 6;
                arm->base.flags |= 0x200;
                sub_0806FE64(1, &arm->base);
                PlaySfx(&arm->base, 398);
                if (arm->base.unk62 & 3)
                    sub_080A8D18(&arm->base, 0, 0x10, 3, 0);
                else if (arm->base.unk62 & 8) 
                    sub_080A8D18(&arm->base, 0x10, 0, 1, arm->base.unk62 & 3);
                else if (arm->base.unk62 & 4)
                    sub_080A8C28(arm, 0x10, 0);
            }
            if (++arm->unk9F > 0x18)
            {
                arm->unk83 = arm->unk85 + 2;
                if (!(mt->obj2.base.flags & 1))
                    gUnk_08357018[arm->type - OBJ_TITAN_ARM_1](arm);
                else
                    gUnk_08357028[arm->type - OBJ_TITAN_ARM_1](arm);
            }
        }
    }
}

void sub_080F1134(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F118C);
    if (arm->unk83 <= 9)
    {
        arm->unk85 = arm->unk83;
        arm->unk83 = 8;
    }
    else
    {
        arm->unk85 = arm->unk83;
        arm->unk83 = 0x12;
    }
    arm->base.flags |= 0x200;
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->base.counter = 0;
    arm->unk9F = 0x24;
}

void sub_080F118C(struct Object2 *arm)
{
    struct MegaTitan *mt = arm->base.parent;

    arm->base.flags |= 4;
    if (mt->obj2.unk83 == 4)
    {
        arm->base.yspeed = mt->obj2.base.yspeed;
        arm->base.xspeed = 0;
    }
    else
    {
        arm->base.yspeed -= 0xA0;
        if (arm->base.yspeed < -0x500)
            arm->base.yspeed = -0x500;
        arm->base.xspeed = 0;
        if (arm->base.flags & 0x40)
        {
            if (arm->unk83 == 8)
                arm->unk83 = 0;
            else
                arm->unk83 = 0xA;
        }
        arm->base.flags |= 0x20;
        arm->base.flags &= ~0x40;
        if (arm->base.unk62 & 4)
        {
            if (!arm->base.counter)
                sub_0806FE64(1, &arm->base);
            if (++arm->base.counter > 0x10)
            {
                arm->base.flags &= ~0x20;
                if (arm->unk85 == 2 || arm->unk85 == 0xC)
                    arm->unk83 = arm->unk85;
                else
                    arm->unk83 = 2;
                arm->unk85 = 0;
                if (!(mt->obj2.base.flags & 1))
                    gUnk_08357018[arm->type - OBJ_TITAN_ARM_1](arm);
                else
                    gUnk_08357028[arm->type - OBJ_TITAN_ARM_1](arm);
            }
        }
    }
}

void sub_080F12A8(struct Object2 *arm)
{
    ObjectSetFunc(arm, -1, sub_080F12F8);
    if (arm->unk83 <= 9)
        arm->unk83 = 9;
    else
        arm->unk83 = 0x13;
    arm->base.flags |= 0x200;
    arm->base.flags |= 0x20;
    arm->base.flags &= ~0x40;
    arm->base.sprite.unk14 = 0x780;
    arm->base.xspeed = 0;
    arm->base.yspeed = 0;
    arm->base.counter = 0;
}

void sub_080F12F8(struct Object2 *arm)
{
    u8 i;
    struct Kirby *kirby;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        kirby = gKirbys + i;
        if (kirby->base.base.base.roomId == arm->base.roomId)
        {
            if (kirby->base.base.base.flags & 0x1000000)
                arm->base.flags |= 0x1000;
            return;
        }
    }
    if (!arm->base.counter && arm->base.unk62 & 4)
    {
        sub_0806FE64(1, &arm->base);
        PlaySfx(&arm->base, 398);
        arm->base.counter = 1;
        arm->base.flags |= 0x2000;
    }
}

void sub_080F1400(struct MegaTitan *mt, u8 a2)
{
    s32 x, y;
    struct Object2 *arm;
    struct MegaTitan *mt2 = mt;

    if (mt->obj2.base.flags & 1)
        x = mt->obj2.base.x >> 8;
    else
        x = mt->obj2.base.x >> 8;
    y = mt->obj2.base.y >> 8;
    arm = CreateObjTemplateAndObj(mt->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_TITAN_ARM_3,
        0, 0, a2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    arm->base.parent = mt;
    mt2->arms[2] = arm;
}

void *CreateTitanArm3(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *arm = TaskGetStructPtr(t, arm);

    InitObject(arm, template, a2);
    arm->base.flags |= 0x40;
    arm->base.flags |= 1;
    arm->base.flags |= 0x200;
    arm->base.flags |= 0x2000000;
    arm->base.unk5C |= 0x1080A0;
    arm->base.flags |= 0x10000;
    arm->unk9E = 0;
    arm->unk7C = sub_080F5744;
    sub_0803E2B0(&arm->base, -4, -8, 8, 4);
    sub_0803E308(&arm->base, -4, -8, 8, -2);
    ObjectInitSprite(arm);
    sub_080F1598(arm);
    arm->base.counter = 180;
    return arm;
}

void sub_080F1598(struct Object2 *arm)
{
    bool32 r4 = FALSE;
    u8 unk83 = 0;

    arm->base.flags &= ~1;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
        unk83 = 0xC;
    if (arm->unk83 == 1)
    {
        arm->unk83 = 0xB;
        sub_080F3974(arm, 4, 0x33C, 8);
        sub_080F3974(arm, 6, 0x33C, 0xC);
        r4 = TRUE;
    }
    ObjectSetFunc(arm, 0xA, sub_080F1690);
    if (r4) arm->unk83 = 0xB;
    if (unk83) arm->unk83 = unk83;
    arm->base.sprite.unk14 = 0x7C0;
    if (((struct MegaTitan *)arm->base.parent)->unkC4)
        arm->base.counter = 8;
    else
    {
        switch (Rand16() & 7)
        {
        case 0:
            arm->base.counter = 0x78;
            break;
        case 1:
            arm->base.counter = 0x5A;
            break;
        case 3:
            arm->base.counter = 0x14;
            break;
        case 4:
            arm->base.counter = 0x2D;
            break;
        case 5:
            arm->base.counter = 0x5A;
            break;
        case 6:
            arm->base.counter = 0x2D;
            break;
        case 2:
        case 7:
            arm->base.counter = 0x3C;
            break;
        }
    }
}

void sub_080F1690(struct Object2 *arm)
{
    s32 lhs, rhs;
    struct MegaTitan *mt = arm->base.parent;
    s8 r2 = 0x1C, r7 = -0xC;

    arm->kirby3 = (void *)mt; // TODO: type of field
    arm->unkA0 = ((struct MegaTitan *)arm->kirby3)->obj2.base.x >> 8;
    arm->unkA2 = ((struct MegaTitan *)arm->kirby3)->obj2.base.y >> 8;
    if (arm->unk83 == 0xC)
    {
        if (abs(arm->unkA0 + r2 - (arm->base.x >> 8)) < 6
            && abs(arm->unkA2 + r7 - (arm->base.y >> 8)) < 6)
            arm->unk83 = 0xA;
    }
    else if (arm->unk83 == 0xA)
    {
        if (mt->obj2.unk83 == 1)
        {
            arm->unk83 = 0xB;
            sub_080F3974(arm, 4, 0x33C, 8);
            sub_080F3974(arm, 6, 0x33C, 0xC);
        }
    }
    else
    {
        if (mt->obj2.unk83 == 3)
            arm->unk83 = 0xA;
    }
    arm->base.flags |= 4;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + r7) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x1C0)
                arm->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x18;
            if (arm->base.yspeed < -0x1C0)
                arm->base.yspeed = -0x1C0;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x80;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x80;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0x240)
                arm->base.xspeed = 0x240;
            else if (arm->base.xspeed < -0x240)
                arm->base.xspeed = -0x240;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
                else if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
                else if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x180;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x180;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + r7) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x20;
            if (arm->base.yspeed > 0x150)
                arm->base.yspeed = 0x150;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x20;
            if (arm->base.yspeed < -0x150)
                arm->base.yspeed = -0x150;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x100;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x100;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + r2) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0xE0)
                arm->base.xspeed = 0xE0;
            else if (arm->base.xspeed < -0xE0)
                arm->base.xspeed = -0xE0;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
                else if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
                else if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x40;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x40;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    arm->base.flags &= ~1;
    if (mt->obj2.base.flags & 1)
        sub_080F1ABC(arm);
    else
    {
        if (arm->unk83 == 0x12)
        {
            if (!--arm->unk9F)
            {
                arm->unk83 = 0xA;
                if (arm->unk85 == 2 || arm->unk85 == 0xC)
                    arm->unk83 = 0xC;
                arm->unk85 = 0;
            }
        }
        else if (arm->unk83 != 0xC && !--arm->base.counter)
        {
            arm->unk83 = 0xA;
            sub_080EFC18(arm);
        }
    }
}

void sub_080F1ABC(struct Object2 *arm)
{
    bool32 r4 = FALSE;
    u8 unk83 = 0;

    arm->base.flags |= 1;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
        unk83 = 2;
    if (arm->unk83 == 0xB)
    {
        arm->unk83 = 1;
        sub_080F3974(arm, 6, 0x33C, 0xA);
        sub_080F3974(arm, 6, 0x33C, 0xE);
        r4 = TRUE;
    }
    ObjectSetFunc(arm, 0, sub_080F1BB0);
    if (r4) arm->unk83 = 1;
    if (unk83) arm->unk83 = unk83;
    arm->base.sprite.unk14 = 0x6C0;
    if (((struct MegaTitan *)arm->base.parent)->unkC4)
        arm->base.counter = 8;
    else
    {
        switch (Rand16() & 7)
        {
        case 0:
            arm->base.counter = 0x78;
            break;
        case 1:
            arm->base.counter = 0x5A;
            break;
        case 3:
            arm->base.counter = 0x14;
            break;
        case 4:
            arm->base.counter = 0x2D;
            break;
        case 5:
            arm->base.counter = 0x5A;
            break;
        case 6:
            arm->base.counter = 0x2D;
            break;
        case 2:
        case 7:
            arm->base.counter = 0x3C;
            break;
        }
    }
}

void sub_080F1BB0(struct Object2 *arm)
{
    s32 lhs, rhs;
    struct MegaTitan *mt = arm->base.parent;
    s8 sl = 0x16, ip = -0x18;

    arm->kirby3 = (void *)mt; // TODO: type of field
    arm->unkA0 = ((struct MegaTitan *)arm->kirby3)->obj2.base.x >> 8;
    arm->unkA2 = ((struct MegaTitan *)arm->kirby3)->obj2.base.y >> 8;
    if (arm->unk83 == 2)
    {
        if (abs(arm->unkA0 + sl - (arm->base.x >> 8)) < 6
            && abs(arm->unkA2 + ip - (arm->base.y >> 8)) < 6)
            arm->unk83 = 0;
    }
    else if (arm->unk83 == 0)
    {
        if (mt->obj2.unk83 == 1)
        {
            arm->unk83 = 1;
            sub_080F3974(arm, 6, 0x33C, 0xA);
            sub_080F3974(arm, 6, 0x33C, 0xE);
        }
    }
    else
    {
        if (mt->obj2.unk83 == 3)
            arm->unk83 = 0;
    }
    arm->base.flags |= 4;
    if (arm->unk83 == 2 || arm->unk83 == 0xC)
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x18;
            if (arm->base.yspeed > 0x1C0)
                arm->base.yspeed = 0x1C0;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x18;
            if (arm->base.yspeed < -0x1C0)
                arm->base.yspeed = -0x1C0;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x80;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x80;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + sl) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0x240)
                arm->base.xspeed = 0x240;
            else if (arm->base.xspeed < -0x240)
                arm->base.xspeed = -0x240;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
                else if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0x240)
                    arm->base.xspeed = 0x240;
                else if (arm->base.xspeed < -0x240)
                    arm->base.xspeed = -0x240;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x180;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x180;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    else
    {
        ++arm->unk9E;
        lhs = arm->base.y & ~0x3FF;
        rhs = ((arm->unkA2 + ip) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            arm->base.yspeed += 0x20;
            if (arm->base.yspeed > 0x150)
                arm->base.yspeed = 0x150;
        }
        else if (lhs < rhs)
        {
            arm->base.yspeed -= 0x20;
            if (arm->base.yspeed < -0x150)
                arm->base.yspeed = -0x150;
        }
        else
        {
            if (arm->base.yspeed < 0)
            {
                arm->base.yspeed += 0x100;
                if (arm->base.yspeed > 0)
                    arm->base.yspeed = 0;
            }
            else
            {
                arm->base.yspeed -= 0x100;
                if (arm->base.yspeed < 0)
                    arm->base.yspeed = 0;
            }
        }
        lhs = arm->base.x & ~0x3FF;
        rhs = ((arm->unkA0 + sl) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            arm->base.flags &= ~1;
            arm->base.xspeed += 0x10;
            if (arm->base.xspeed > 0xE0)
                arm->base.xspeed = 0xE0;
            else if (arm->base.xspeed < -0xE0)
                arm->base.xspeed = -0xE0;
        }
        else if (lhs > rhs)
        {
            arm->base.flags |= 1;
            if (arm->base.flags & 1)
            {
                arm->base.xspeed -= 0x10;
                if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
                else if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
            }
            else
            {
                arm->base.xspeed += 0x10;
                if (arm->base.xspeed > 0xE0)
                    arm->base.xspeed = 0xE0;
                else if (arm->base.xspeed < -0xE0)
                    arm->base.xspeed = -0xE0;
            }
        }
        else
        {
            if (arm->base.xspeed < 0)
            {
                arm->base.xspeed += 0x40;
                if (arm->base.xspeed > 0)
                    arm->base.xspeed = 0;
            }
            else
            {
                arm->base.xspeed -= 0x40;
                if (arm->base.xspeed < 0)
                    arm->base.xspeed = 0;
            }
        }
    }
    arm->base.flags |= 1;
    if (!(mt->obj2.base.flags & 1))
        sub_080F1598(arm);
    else
    {
        if (arm->unk83 == 8)
        {
            if (!--arm->unk9F)
            {
                arm->unk83 = 0;
                if (arm->unk85 == 2 || arm->unk85 == 0xC)
                    arm->unk83 = 2;
                arm->unk85 = 0;
            }
        }
        else if (arm->unk83 != 2 && !--arm->base.counter)
        {
            arm->unk83 = 0;
            sub_080EFC18(arm);
        }
    }
}